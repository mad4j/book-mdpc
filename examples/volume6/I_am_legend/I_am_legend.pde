// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// I Am Legend (2007)


final color PAPER = color(105, 35, 5);
final color INK = color(255, 240, 210);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK);
  rotate(-TWO_PI / 4);
  for (int i=0; i<3; i++) {
    ellipse(0.25, 0.0, 0.5, 0.5);
    rotate(TWO_PI / 3);
  }
  
  fill(PAPER);
  for (int i=0; i<3; i++) {
    ellipse(0.3, 0.0, 0.4, 0.4);
    rotate(TWO_PI / 3);
  }
  
  ellipse(0.0, 0.0, 0.1, 0.1);
  
  noFill();
  stroke(INK);
  strokeWeight(30*U);
  ellipse(0.0, 0.0, 0.4, 0.4);
  
  stroke(PAPER);
  strokeWeight(10*U);
  for (int i=0; i<3; i++) {
    line(0.0, 0.0, 0.1, 0.0);
    rotate(TWO_PI / 3);
  }
  
  noFill();
  stroke(PAPER);
  strokeWeight(10*U);
  for (int i=0; i<3; i++) {
    ellipse(0.3, 0.0, 0.4, 0.4);
    rotate(TWO_PI / 3);
  }
  
  save("i-am-legend.png");
}
