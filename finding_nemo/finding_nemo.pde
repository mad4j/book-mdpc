// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Finding Nemo

final color PAPER = color(250, 249, 248);
final color INK1 = color(245, 132, 0);
final color INK2 = color(34, 34, 34);


final float STROKE = 10.0;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  fill(INK1);
  stroke(INK2);
  strokeWeight(STROKE);
  
  float dx = width/3.0;
  float dy = height/3.0;

  beginShape();
  curveVertex(0, dy+150);
  curveVertex(0, dy);
  curveVertex(dx, dy +20);
  curveVertex(2*dx, dy -15);
  curveVertex(width+STROKE, dy);
  curveVertex(width+STROKE, dy-200);
  vertex(width+STROKE, 0-STROKE);
  vertex(0-STROKE, 0-STROKE);
  endShape();
  
  beginShape();
  curveVertex(0, 2*dy+50);
  curveVertex(0, 2*dy);
  curveVertex(dx, 2*dy +50);
  curveVertex(2*dx, 2*dy +5);
  curveVertex(width+STROKE, 2*dy);
  curveVertex(width+STROKE, 2*dy);
  vertex(width+STROKE, height+STROKE);
  vertex(0-STROKE, height+STROKE);
  endShape();
  
  save("finding-nemo.png");

}
