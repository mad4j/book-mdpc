// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Tron

final color PAPER = color(32);
final color INK1 = color(0, 136, 86);
final color INK2 = color(103, 156, 200);
final color INK3 = color(195, 84, 93);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  noFill();
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  strokeWeight(0.5);
  stroke(INK1);
  drawGrid(8);
  
  strokeWeight(10.0);
  stroke(INK2);
  drawPath(width/5.0, height/5.0);
  
  translate(20, 20);
  
  stroke(INK3);
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
  vertex(2*dx, 4*dy);
  vertex(2*dx, 2*dy);
  vertex(3*dx, 2*dy);
  vertex(3*dx, dy);
  endShape();
}
