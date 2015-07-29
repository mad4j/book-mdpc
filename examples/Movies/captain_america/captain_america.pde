// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Captain America: the First Avenger

final color PAPER = color(237, 225, 203);
final color INK1 = color(217, 50, 42);
final color INK2 = color(242, 243, 244);
final color INK3 = color(0, 142, 164);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  noStroke();
  
  fill(INK1);
  ellipse(0, 0, 340, 340);
  
  fill(INK2);
  ellipse(0, 0, 280, 280);
  
  fill(INK1);
  ellipse(0, 0, 220, 220);
  
  fill(INK3);
  ellipse(0, 0, 150, 150);
  
  fill(INK2);
  star(0, 0, 25, 50, 5);
 
 save("captain-america.png"); 
}

void star(float x, float y, float r1, float r2, int n) {
  
  float angle = TWO_PI / n;
  float halfAngle = angle/2.0;
  
  beginShape();
  
  for (float a = -HALF_PI; a < TWO_PI-HALF_PI; a += angle) {
    float sx = x + cos(a) * r2;
    float sy = y + sin(a) * r2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * r1;
    sy = y + sin(a+halfAngle) * r1;
    vertex(sx, sy);
  }
  
  endShape(CLOSE);
}
