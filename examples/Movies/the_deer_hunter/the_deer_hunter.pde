// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Deer Hunter

final color PAPER = color(194, 178, 128);
final color INK = color(136, 45, 23);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
    
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(4.0);
  
  ellipseMode(CENTER);
  
  for (int i=0; i<6; i++) {
    ellipse(120, 0, 100, 100);
    rotate(TWO_PI/6);
  }
  
  rotate(-TWO_PI/6);
  
  noStroke();
  fill(INK);
  ellipse(120, 0, 85, 85);
  
  stroke(PAPER);
  point(120, 0);
  
  save("the-deer-hunter.png");
}
