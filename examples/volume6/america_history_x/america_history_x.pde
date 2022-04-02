// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// America History X (1998)


final color PAPER = color(240);
final color INK = color(35);

final float L = 0.2;
final float T = 50;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.75*width, 0.3*height);
  rotate(QUARTER_PI);
  scale(S);
  
  background(PAPER);
  
  strokeCap(PROJECT);
  strokeWeight(T*U);
  
  for (int i=0; i<4; i++) {
    line(0.0, 0.0, 0.0,   L);
    line(0.0,   L,  -L,   L);
    rotate(HALF_PI);
  }
  
  save("american-history-x.png");
}
