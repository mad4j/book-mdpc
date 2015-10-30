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
  stroke(INK1);  
  strokeWeight(35.0);
  
  fill(INK2);
  ellipse(0, 0, 340, 340);

  fill(INK3);
  ellipse(0, 0, 200, 200);
 
  noStroke();
  fill(INK2);

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
  
  save("captain-america.png"); 
}