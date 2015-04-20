

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(0);
  
  translate(width/2.0, height/2.0);
  star(0, 0, 30, 70, 5); 
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
