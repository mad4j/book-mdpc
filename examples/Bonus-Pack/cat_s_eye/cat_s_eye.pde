
// Making Movies
// Daniele Olmisani <daniele.olmisani@gmail.com>
// 2015

// Stephen King's Cat's Eye

final color PAPER = color(15, 15, 15);
final color INK = color(240, 240, 210);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK);
  ellipse(0, 0, 650, 500);
  
  fill(PAPER);
  ellipse(0, 0, 75, 450);
  
  save("cat's-eye.png");
}
