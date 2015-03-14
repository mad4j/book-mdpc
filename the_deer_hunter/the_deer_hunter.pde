
final color BACKG_COLOR = color(194, 178, 128);
final color FOREG_COLOR = color(136, 45, 23);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(BACKG_COLOR);
  
  ellipseMode(CENTER);
  
  stroke(FOREG_COLOR);
  strokeWeight(4.0);
  
  noFill();
  
  translate(width/2.0, height/2.0);
  
  for (int i=0; i<6; i++) {
    ellipse(120, 0, 100, 100);
    rotate(TWO_PI/6);
  }
  
  rotate(-TWO_PI/6);
  
  noStroke();
  fill(FOREG_COLOR);
  ellipse(120, 0, 85, 85);
  
  stroke(BACKG_COLOR);
  point(120, 0);
  
  save("the-deer-hunter.png");
}
