
final color BACKG_COLOR = color(4, 18, 19);
final color FOREG_COLOR = color(9, 215, 238);

void setup() {
  
  size(480, 640);
  noLoop();
}

void drawBackground() {
  
  background(BACKG_COLOR);
  
  noStroke();
  fill(FOREG_COLOR);
  
  for (int i=0; i<8000; i++) {
    ellipse(randomGaussian()*100, randomGaussian()*200, 2, 2);
  }
  
  filter(BLUR, 10);
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
  
  filter(BLUR, 1);
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  drawBackground();
  drawDisk();
}
