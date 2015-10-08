
final color PAPER = color(15, 0, 100);
final color INK1 = color(250, 0, 0);
final color INK2 = color(255);

final int D = 75;
final int S = 8;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(INK1);
  
  fill(PAPER);
  
  stroke(INK2);
  strokeWeight(20.0);
  
  quad(-D, 0, 0, -D, width+D, height, width, height+D);
  quad(width+D, 0, 0, height+D, 0-D, height, width, 0-D);
  
  noStroke();
  quad(-D, 0, 0, -D, width+D, height, width, height+D);
  quad(width+D, 0, 0, height+D, 0-D, height, width, 0-D);
  
  fill(INK2);
  //star(width/2.0, height/2.0, 10, 20, 5);
  for (int i=1; i<S; i++) {
    star(i*width/S, i*height/S, 10, 25, 5);
    star((S-i)*width/S, i*height/S, 10, 25, 5);
  }
  
  save("hazzard.png");
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