
/**
 * Jaws - Minimal Poster
 * Daniele Olmisani <daniele.olmisani@gmail.com>, 2015
 *
 * Jaws
 * by Steven Spielberg, 1075
 */


void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(0, 103, 165);
  
  float yOffset = height/10.0;
  float xOffset = width/10.0;
  
  noStroke();
  
  fill(194, 178, 128);
  rect(0, 0, width, yOffset);
  rect(0, height-yOffset, width, yOffset);
  
  for (int i=0; i<10; i++) {
    triangle(0+i*xOffset, yOffset, xOffset+i*xOffset, yOffset, xOffset/2.0+i*xOffset, yOffset+xOffset);
    triangle(0+i*xOffset, height-yOffset, xOffset+i*xOffset, height-yOffset, xOffset/2.0+i*xOffset, height-yOffset-xOffset);
  }
  
  save("jaws.png");
  
}
