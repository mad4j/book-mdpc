
final color PAPER = color(244);

final color[] INKS = {
  color(55, 115, 160),
  color(30, 30, 30),
  color(180, 70, 75),
  color(100, 150, 65)
};

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  noStroke();
  
  rotate(QUARTER_PI);
  
  for (int i=0; i<4; i++) {
    rotate(HALF_PI);
    fill(INKS[i]);
    arc(0, 0, 250, 250, 0, HALF_PI, PIE);
  }
  
  ellipseMode(CENTER);
  fill(PAPER);
  ellipse(0, 0, 20, 20);
}
