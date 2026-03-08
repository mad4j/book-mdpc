// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2024

// SPECTRE (2015)


final color PAPER = color(15);
final color INK = color(215, 210, 205);

final int ARMS = 8;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.5*height);
  scale(S);

  background(PAPER);

  noFill();
  stroke(INK);
  strokeWeight(10*U);

  for (int i = 0; i < ARMS; i++) {
    float a = i * TWO_PI / ARMS;
    float da = 0.35;
    bezier(
      0.18 * cos(a),       0.18 * sin(a),
      0.30 * cos(a - da),  0.30 * sin(a - da),
      0.36 * cos(a + da),  0.36 * sin(a + da),
      0.48 * cos(a),       0.48 * sin(a)
    );
  }

  fill(INK);
  ellipse(0.0, 0.0, 0.36, 0.36);

  save("spectre.png");
}
