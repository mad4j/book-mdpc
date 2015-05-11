// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Lord of the Rings

final color GOLD = color(243, 220, 0);
final color PAPER = color(242, 243, 244);

final int RING_SIZE = 300;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
 
  background(PAPER);
  
  noFill();
  stroke(GOLD);
  strokeWeight(0.15*RING_SIZE);
  
  ellipseMode(CENTER);
  
  ellipse(0, 0, RING_SIZE, RING_SIZE);
  
  save("the-lord-of-the-rings.png");
}
