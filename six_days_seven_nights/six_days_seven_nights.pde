
final color BACKG_COLOR = color(32, 32, 32);
final color SUN_COLOR = color(255, 255, 0);
final color MOON_COLOR = color(244, 243, 242);



void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(BACKG_COLOR);
  
  for (int i=0; i<6; i++) {
    drawSun(80+i*30, 50+i*(height/7.0), 30, 8);
  }
  
  for (int i=0; i<7; i++) {
    drawMoon(200+i*30, 50+i*(height/7.0), 45, i);
  }
}

void drawSun(float x, float y, float r1, int rays) {
  
  fill(SUN_COLOR);
  stroke(SUN_COLOR);
  strokeWeight(r1/6.0);
  
  pushMatrix();
  
  translate(x, y);
  ellipseMode(CENTER);
  ellipse(0, 0, r1, r1);
  
  float offset = r1/2.0 + r1/4.0;
  
  for (int i=0; i<=rays; i++) {
    line(offset, 0, offset+r1/2.0, 0);
    rotate(TWO_PI / rays);
  }
  
  popMatrix();
}


void drawMoon(float x, float y, float r, int phase) {
  
  pushMatrix();
  
  translate(x, y);
  
  fill(MOON_COLOR);
  stroke(MOON_COLOR);
  ellipseMode(CENTER);
  ellipse(0, 0, r, r);
  
  fill(BACKG_COLOR);
  stroke(BACKG_COLOR);
  float offset = r/8 * (phase+1);
  ellipse(offset, -offset, r, r);
  
  popMatrix();
}
