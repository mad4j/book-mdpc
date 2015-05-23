// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Love Story

final color PAPER = color(242, 243, 244);
final color INK = color(190, 0, 50);

final int SIZE = 150;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  pushMatrix();
  rotate(-QUARTER_PI);
  translate(-SIZE/2.0, 0);
  
  ellipse(0, 0, SIZE, SIZE);
  rect(-SIZE/2.0, 0, SIZE, SIZE);
  
  popMatrix();
  rotate(QUARTER_PI);
  translate(SIZE/2.0, 0);
  
  ellipse(0, 0, SIZE, SIZE);
}
