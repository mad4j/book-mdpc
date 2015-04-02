
final color BACKG_COLOR = color(4, 18, 19);
final color FOREG_COLOR = color(9, 215, 238);

void setup() {
  
  size(480, 640);
  noLoop();
}

void drawDisk() {
  
  noStroke();
  
  fill(FOREG_COLOR);
  ellipse(0, 0, 150, 150);
  
  fill(BACKG_COLOR);
  ellipse(0, 0, 125, 125);
  
  fill(FOREG_COLOR);
  ellipse(0, 0, 90, 90);
  
  fill(BACKG_COLOR);
  ellipse(0, 0, 70, 70);
}

void draw() {
  
  background(BACKG_COLOR);
  
  translate(width/2.0, height/2.0);
  
  drawDisk();
  filter(BLUR, 25);
  
  drawDisk();
  filter(BLUR, 1);
}
