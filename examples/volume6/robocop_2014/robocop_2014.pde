// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2023

// RoboCop (2014)


final color PAPER = color(10, 10, 20);
final color INK = color(215, 0, 100);

final float RADIUS = 0.6;

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeWeight(25*U);
  
  rectMode(CORNERS);
  rect(-RADIUS, 0.0,  RADIUS, -1.0, 0.25);
  
  save("robocop-2014.png");
}
