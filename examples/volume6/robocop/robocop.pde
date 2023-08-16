// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// RoboCop (1987)


final color PAPER = color(165, 170, 175);
final color INK = color(20);

final float RADIUS = 0.3;

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
  
  stroke(INK);
  
  strokeWeight(50*U);
  line(-RADIUS, 0.0, RADIUS, 0.0);
  
  strokeWeight(2*U);
  line(-1.5*RADIUS, 0.0, 1.5*RADIUS, 0.0);
  
  save("robocop.png");
}
