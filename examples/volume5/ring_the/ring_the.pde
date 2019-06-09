// Manuale di Programmazione Cinematografica - Volume 5
// Daniele Olmisani, 2019

// The Ring (2002)


final color PAPER = color(0);
final color INK= color(255);
final float ALPHA = 100;

final int COUNT = 15;
final float OFFSET = 0.02;
final int WEIGHT = 5;
final float RADIUS = 0.5;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float U = 0.002;
  final float S = min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  randomSeed(0);
  
  background(PAPER);
  
  noFill();
  stroke(INK, ALPHA);
  strokeWeight(WEIGHT*U);
  
  for (int i=0; i<COUNT; i++) {
    float dx = random(-OFFSET, +OFFSET);
    float dy = random(-OFFSET, +OFFSET);
    ellipse(dx, dy, RADIUS, RADIUS);
  }
  
  save("the-ring.png");
}
