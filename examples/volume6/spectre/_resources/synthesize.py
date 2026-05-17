import json
import os
import sys
import cv2
import numpy as np

PARAMS_FILE = "spectre_params.json"
IMAGE_FILE  = "007_Spectre_Purple.webp"
OUTPUT_FILE = "spectre_synth.webp"


def _estrai_contorno_e_colore(image_path):
    """Carica immagine, estrae colore medio della forma e contorno denso."""
    img = cv2.imread(image_path)
    if img is None:
        raise FileNotFoundError(f"Immagine non trovata: {image_path}")

    rgb = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    h, w = img.shape[:2]

    # Consideriamo sfondo i pixel quasi-bianchi.
    mask_forma = ~((rgb[:, :, 0] > 220) & (rgb[:, :, 1] > 220) & (rgb[:, :, 2] > 220))
    colore = np.rint(rgb[mask_forma].mean(axis=0)).astype(int).tolist()

    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    gray = cv2.GaussianBlur(gray, (3, 3), 0)
    _, thresh = cv2.threshold(gray, 200, 255, cv2.THRESH_BINARY_INV)

    contours, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
    contorno_denso = max(contours, key=cv2.contourArea)
    return w, h, colore, thresh, contorno_denso


def _params_da_contorno(w, h, colore, contorno_denso, epsilon_rel):
    """Costruisce i parametri spline applicando una semplificazione controllata."""
    epsilon = epsilon_rel * cv2.arcLength(contorno_denso, True)
    pts = cv2.approxPolyDP(contorno_denso, epsilon, True).reshape(-1, 2)

    # Se la semplificazione è estrema, garantiamo almeno 4 punti.
    if len(pts) < 4:
        pts = contorno_denso.reshape(-1, 2)

    dati = {
        "width": w,
        "height": h,
        "color_rgb": colore,
        "px": np.round(pts[:, 0], 1).tolist(),
        "py": np.round(pts[:, 1], 1).tolist(),
        "epsilon_rel": float(epsilon_rel),
    }
    return dati, len(contorno_denso), len(pts), epsilon


def _mask_da_parametri(d, n_samples=3000):
    """Renderizza una maschera binaria dai parametri (nuovo formato poligono)."""
    w, h = d["width"], d["height"]
    poly = np.column_stack([np.rint(d["px"]), np.rint(d["py"])]).astype(np.int32)
    poly[:, 0] = np.clip(poly[:, 0], 0, w - 1)
    poly[:, 1] = np.clip(poly[:, 1], 0, h - 1)

    mask = np.zeros((h, w), dtype=np.uint8)
    cv2.fillPoly(mask, [poly], 255)
    return mask


def _iou(mask_a, mask_b):
    a = mask_a > 0
    b = mask_b > 0
    inter = np.logical_and(a, b).sum()
    union = np.logical_or(a, b).sum()
    return float(inter / union) if union else 1.0


def estrai_e_salva(image_path, params_path, epsilon_rel=None, target_iou=0.995):
    """
    Estrae il modello matematico e lo salva in JSON.

    Se epsilon_rel è None, sceglie automaticamente il valore più grande
    che mantiene IoU >= target_iou rispetto alla maschera originale.
    """
    w, h, colore, thresh, contorno_denso = _estrai_contorno_e_colore(image_path)

    if epsilon_rel is None:
        # Dalla più compressa alla più fedele.
        candidati = [0.010, 0.008, 0.006, 0.004, 0.003, 0.002, 0.0015, 0.001, 0.0007, 0.0005, 0.0003, 0.0002, 0.0001]
        migliore = None
        migliore_iou = -1.0

        for eps in candidati:
            d, n_dense, n_pts, epsilon = _params_da_contorno(w, h, colore, contorno_denso, eps)
            iou = _iou(thresh, _mask_da_parametri(d))
            print(f"Test eps={eps:.4f}: {n_dense}->{n_pts} punti, IoU={iou:.5f}")
            if iou > migliore_iou:
                migliore_iou = iou
                migliore = (d, n_dense, n_pts, epsilon, iou)
            if iou >= target_iou:
                migliore = (d, n_dense, n_pts, epsilon, iou)
                break

        dati, n_dense, n_pts, epsilon, iou = migliore
        print(f"Scelto eps={dati['epsilon_rel']:.4f} con IoU={iou:.5f}")
    else:
        dati, n_dense, n_pts, epsilon = _params_da_contorno(w, h, colore, contorno_denso, epsilon_rel)
        iou = _iou(thresh, _mask_da_parametri(dati))
        print(f"Uso eps={epsilon_rel:.4f}: IoU={iou:.5f}")

    print(f"Punti contorno: {n_dense} -> {n_pts} (epsilon={epsilon:.1f}px)")

    with open(params_path, "w") as f:
        json.dump(dati, f, separators=(",", ":"))

    size_kb = os.path.getsize(params_path) / 1024
    print(f"Parametri salvati in: {params_path} ({len(dati['px'])} nodi, {size_kb:.1f} KB, IoU={iou:.5f})")
    return dati


def ricostruisci(params_path, output_path):
    """Carica il JSON e ricostruisce l'immagine sintetizzata."""
    with open(params_path) as f:
        d = json.load(f)

    mask = _mask_da_parametri(d)

    h, w = d["height"], d["width"]
    out = np.full((h, w, 3), 255, dtype=np.uint8)
    colore_rgb = [int(round(v)) for v in d["color_rgb"]]
    colore_bgr = (colore_rgb[2], colore_rgb[1], colore_rgb[0])
    out[mask > 0] = colore_bgr

    ext = os.path.splitext(output_path)[1].lower()
    if ext == ".webp":
        cv2.imwrite(output_path, out, [cv2.IMWRITE_WEBP_QUALITY, 100])
    else:
        cv2.imwrite(output_path, out)
    print(f"Immagine ricostruita salvata in: {output_path}")


if __name__ == "__main__":
    # Uso: python synthesize.py [extract|reconstruct|both] [epsilon_rel|auto] [target_iou]
    # Esempi:
    #   python synthesize.py both auto 0.995   # qualità alta, dimensione minima automatica
    #   python synthesize.py both 0.002        # epsilon manuale
    mode = sys.argv[1] if len(sys.argv) > 1 else "both"

    epsilon_arg = sys.argv[2] if len(sys.argv) > 2 else "auto"
    target_iou = float(sys.argv[3]) if len(sys.argv) > 3 else 0.995
    epsilon_rel = None if epsilon_arg == "auto" else float(epsilon_arg)

    if mode in ("extract", "both"):
        estrai_e_salva(IMAGE_FILE, PARAMS_FILE, epsilon_rel=epsilon_rel, target_iou=target_iou)

    if mode in ("reconstruct", "both"):
        ricostruisci(PARAMS_FILE, OUTPUT_FILE)
