

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(34, 34, 34);
  
  noFill();
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  strokeWeight(0.5);
  stroke(0, 136, 86);
  drawGrid(8);

  
  strokeWeight(5.0);
  
  translate(25, 25);
  
  stroke(103, 156, 200);
  drawPath(width/5.0, height/5.0);
  
  translate(15, 15);
  
  stroke(195, 84, 93);
  drawPath(width/5.0, height/5.0);
  
  save("tron.png");
}

void drawGrid(int n) {
  
  float dx = (float)width/n;
  float dy = (float)height/n;
  
  for (int i=0; i<n; i++) {
    line(0, i*dy, width, i*dy); 
    line(i*dx, 0, i*dx, height); 
  }
}

void drawPath(float dx, float dy) {
  beginShape();
  vertex(2*dx, height);
  vertex(2*dx, 2*dy);
  vertex(3*dx, 2*dy);
  vertex(3*dx, dy);
  endShape();
}
