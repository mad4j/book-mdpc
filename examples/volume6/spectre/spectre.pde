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

  beginShape();

  // PUNTO DI PARTENZA: Testa in alto al centro
  vertex(0.0000, -0.3854);

  // --- LATO DESTRO ---
  // Testa (curva destra) - più tonda
  bezierVertex(0.1050, -0.3854, 0.1050, -0.2604, 0.0729, -0.2188);

  // Spalla destra (incurvata verso l'alto)
  bezierVertex(0.1458, -0.2188, 0.3125, -0.3200, 0.3958, -0.1146);

  // Tentacolo esterno (3° da destra) - punta più curva
  bezierVertex(0.4375, -0.0417, 0.4300,  0.1146, 0.3646,  0.1146);

  // Membrana tra 3° e 2° tentacolo
  bezierVertex(0.3000,  0.1146, 0.3229, -0.1146, 0.3021, -0.1146);

  // Tentacolo medio (2° da destra) - punta più curva
  bezierVertex(0.2813, -0.1146, 0.3000,  0.1563, 0.2500,  0.1563);

  // Membrana tra 2° e 1° tentacolo
  bezierVertex(0.2000,  0.1563, 0.2083, -0.0938, 0.1875, -0.0938);

  // Tentacolo interno (1° da destra) - punta più curva
  bezierVertex(0.1667, -0.0938, 0.1800,  0.1979, 0.1354,  0.1979);

  // Membrana tra 1° tentacolo e centrale
  bezierVertex(0.0900,  0.1979, 0.0938, -0.0729, 0.0729, -0.0729);

  // Tentacolo centrale - punta più curva (il più lungo)
  bezierVertex(0.0521, -0.0729, 0.0600,  0.3854, 0.0000,  0.3854);

  // --- LATO SINISTRO (Specchiato perfettamente) ---
  // Invertiamo i valori X e l'ordine per chiudere la forma senza interruzioni

  // Tentacolo centrale (risalita lato sinistro)
  bezierVertex(-0.0600,  0.3854, -0.0521, -0.0729, -0.0729, -0.0729);

  // Membrana tra centrale e 1° sinistro
  bezierVertex(-0.0938, -0.0729, -0.1146,  0.0313, -0.1354,  0.1979);

  // Tentacolo interno (1° da sinistra) - punta più curva
  bezierVertex(-0.1800,  0.1979, -0.1667, -0.0938, -0.1875, -0.0938);

  // Membrana tra 1° e 2° sinistro
  bezierVertex(-0.2083, -0.0938, -0.2292,  0.0104, -0.2500,  0.1563);

  // Tentacolo medio (2° da sinistra) - punta più curva
  bezierVertex(-0.3000,  0.1563, -0.2813, -0.1146, -0.3021, -0.1146);

  // Membrana tra 2° e 3° sinistro
  bezierVertex(-0.3229, -0.1146, -0.3438, -0.0104, -0.3646,  0.1146);

  // Tentacolo esterno (3° da sinistra) - punta più curva
  bezierVertex(-0.4300,  0.1146, -0.4375, -0.0417, -0.3958, -0.1146);

  // Spalla sinistra (incurvata verso l'alto)
  bezierVertex(-0.3125, -0.3200, -0.1458, -0.2188, -0.0729, -0.2188);

  // Testa (curva sinistra fino a chiudere) - più tonda
  bezierVertex(-0.1050, -0.2604, -0.1050, -0.3854, 0.0000, -0.3854);

  endShape(CLOSE);

  save("spectre.png");
}
