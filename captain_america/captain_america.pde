

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(237, 225, 203);
  noStroke();
  
  translate(width/2.0, height/2.0);
  
  fill(217, 50, 42);
  ellipse(0, 0, 340, 340);
  
  fill(242, 243, 244);
  ellipse(0, 0, 280, 280);
  
  fill(217, 50, 42);
  ellipse(0, 0, 220, 220);
  
  fill(0, 142, 164);
  ellipse(0, 0, 150, 150);
  
  fill(242, 243, 244);
  star(0, 0, 25, 50, 5);
 
 save("captain-america.png"); 
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = -HALF_PI; a < TWO_PI-HALF_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
