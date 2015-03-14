
final color BACKG_COLOR = color(34, 34, 34);
final color FOREG_COLOR = color(243, 195, 0);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(BACKG_COLOR);
  
  noStroke();
  fill(FOREG_COLOR);
  
  rectMode(CENTER);
  
  fill(FOREG_COLOR);
  rect(100, 100, 50, 100, 30, 30, 30, 30);
  fill(BACKG_COLOR);
  rect(100, 100, 50*0.60, 100*0.75, 30, 30, 30, 30);
}
