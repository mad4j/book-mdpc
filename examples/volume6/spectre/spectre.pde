// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2024

// SPECTRE (2015)


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S = min(width, height);

  translate(0.5*width, 0.5*height);
  scale(S);

  background(255);

  noStroke();
  fill(195, 25, 25);

  // Testa
  ellipse(0, -0.2813, 0.2292, 0.2292);

  // Corpo: spalle + tentacoli
  beginShape();

  // PUNTO DI PARTENZA: Connessione testa-spalla destra
  vertex(0.0625, -0.2083);

  // --- LATO DESTRO ---
  // Spalla destra (curva ampia verso l'esterno)
  bezierVertex(0.1563, -0.1875, 0.3750, -0.2292, 0.4271, -0.0833);

  // Tentacolo esterno (3° da destra) - punta
  bezierVertex(0.4583, -0.0104, 0.4271,  0.1250, 0.3854,  0.1563);

  // Membrana tra 3° e 2° tentacolo
  bezierVertex(0.3438,  0.0208, 0.3229, -0.0729, 0.3021, -0.0833);

  // Tentacolo medio (2° da destra) - punta
  bezierVertex(0.2813, -0.0833, 0.2604,  0.0625, 0.2396,  0.2083);

  // Membrana tra 2° e 1° tentacolo
  bezierVertex(0.2083,  0.0208, 0.1875, -0.0521, 0.1667, -0.0625);

  // Tentacolo interno (1° da destra) - punta
  bezierVertex(0.1458, -0.0625, 0.1354,  0.1042, 0.1146,  0.2500);

  // Membrana tra 1° tentacolo e centrale
  bezierVertex(0.0938,  0.0625, 0.0729, -0.0208, 0.0521, -0.0417);

  // Tentacolo centrale - punta (il più lungo)
  bezierVertex(0.0313, -0.0417, 0.0208,  0.2500, 0.0000,  0.4583);

  // --- LATO SINISTRO (Specchiato perfettamente) ---
  // Tentacolo centrale (risalita lato sinistro)
  bezierVertex(-0.0208,  0.2500, -0.0313, -0.0417, -0.0521, -0.0417);

  // Membrana tra centrale e 1° sinistro
  bezierVertex(-0.0729, -0.0208, -0.0938,  0.0625, -0.1146,  0.2500);

  // Tentacolo interno (1° da sinistra)
  bezierVertex(-0.1354,  0.1042, -0.1458, -0.0625, -0.1667, -0.0625);

  // Membrana tra 1° e 2° sinistro
  bezierVertex(-0.1875, -0.0521, -0.2083,  0.0208, -0.2396,  0.2083);

  // Tentacolo medio (2° da sinistra)
  bezierVertex(-0.2604,  0.0625, -0.2813, -0.0833, -0.3021, -0.0833);

  // Membrana tra 2° e 3° sinistro
  bezierVertex(-0.3229, -0.0729, -0.3438,  0.0208, -0.3854,  0.1563);

  // Tentacolo esterno (3° da sinistra)
  bezierVertex(-0.4271,  0.1250, -0.4583, -0.0104, -0.4271, -0.0833);

  // Spalla sinistra
  bezierVertex(-0.3750, -0.2292, -0.1563, -0.1875, -0.0625, -0.2083);

  endShape(CLOSE);

  save("spectre.png");
}
