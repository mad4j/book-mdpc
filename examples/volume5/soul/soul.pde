// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Soul (2020)


final color PAPER = color(60, 105, 170);
final color INK = color(90, 150, 185);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.5*height);
  scale(S);
  rotate(PI / 6);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  ellipse(0.0, 0.0, 0.2, 0.2);
  
  for (int i=0; i<6; i++) {
    ellipse(0.25, 0.0, 0.2, 0.2);
    rotate(PI / 3);
  }
  
  save("soul.png");
}  
