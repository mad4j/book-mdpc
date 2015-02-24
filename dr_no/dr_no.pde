
final float SIZE_X = 100;
final float SIZE_Y = SIZE_X / 2.0;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  float cX = width/2.0;
  float cY = height/4.0;
  
  background(255);
  
  fill(0);
  
  beginShape();
  vertex(cX, cY);
  vertex(cX+SIZE_X, cY-SIZE_Y);
  vertex(cX+SIZE_X, cY+SIZE_Y);
  vertex(cX, cY);
  vertex(cX-SIZE_X, cY-SIZE_Y);
  vertex(cX-SIZE_X, cY+SIZE_Y);
  endShape();
  
  noFill();
  rect(0, 0, width-1, height-1);
  
  save("dr-no.png");
}
