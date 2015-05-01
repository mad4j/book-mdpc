  
  void setup() {
    size(480, 640);
    smooth();
    noLoop();
  }
  

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(244, 243, 242);
  
  drawGear(0, 0, 75, 20, 0);
  drawGear(99, 98, 50, 20, 2);
  drawGear(21, 178, 50, 20, 0);
  drawGear(70, 262, 35, 20, 0);
  
  save("modern-times.png");
}


void drawGear(float x, float y, float r, float s, float a) {

  pushMatrix();
  
  fill(43, 61, 38);
  noStroke();
  
  translate(x, y);
  rotate(a);
  
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  int n = (int)((r*PI) / s);
  
  for (int i=0; i<n; i++) {
    rect(r, 0, s, s);
    rotate(TWO_PI / n);
  }
  ellipse(0, 0, 2*r, 2*r);
  
  fill(244, 243, 242);
  ellipse(0, 0, 5, 5);
  
  popMatrix();
}
