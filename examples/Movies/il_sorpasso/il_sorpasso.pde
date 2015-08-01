// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Il Sorpasso

final color PAPER = color(242, 243, 244);
final color INK1 = color(0, 103, 165);
final color INK2 = color(190, 0, 50);

final float STROKE = 20.0;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  strokeWeight(STROKE);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  noFill();
  
  stroke(INK1);
  arrow(300, 400, 300, 250);
  
  stroke(INK2);
  beginShape();
    vertex(300, 550);
    vertex(300, 450);
    vertex(250, 400); 
    vertex(250, 250);
    vertex(250, 250);
    vertex(300, 200);
  endShape();
  arrow(300, 200, 300, 100);
  
  save("il-sorpasso.png");
}

void arrow(float x1, float y1, float x2, float y2) {
  line(x1, y1, x2, y2);
  pushMatrix();
    translate(x2, y2);
    float a = atan2(x1-x2, y2-y1);
    rotate(a);
    line(0, 0, -STROKE, -STROKE);
    line(0, 0, STROKE, -STROKE);
  popMatrix();
} 

