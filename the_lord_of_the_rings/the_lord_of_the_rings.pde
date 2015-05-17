// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Lord of the Rings

final color PAPER = color(242, 243, 244);
final color INK = color(243, 220, 0);

final int SIZE = 300;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
 
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(0.15*SIZE);
  
  ellipseMode(CENTER);
  ellipse(0, 0, SIZE, SIZE);
  
  save("the-lord-of-the-rings.png");
}
