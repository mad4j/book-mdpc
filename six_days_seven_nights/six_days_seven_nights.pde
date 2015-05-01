
final color BACKG_COLOR = color(96, 78, 151);
final color SUN_COLOR = color(255, 255, 0);
final color MOON_COLOR = color(244, 243, 242);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(BACKG_COLOR);
  
  translate(width/2.0, 0);
  
  int phase = 1;
  for (int j=0; j<2; j++) {
    for (int i=-1; i<2; i++) {
      drawSun(i*120, 100+j*110, 40, 8);
      drawMoon(i*120, 320+j*110, 60, phase++);
    }
  }
  drawMoon(0, 540, 60, 8);
  
  save ("six-days-seven-nights.png");
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
  rotate(HALF_PI/2.0);
  
  fill(MOON_COLOR);
  noStroke();
  
  ellipseMode(CENTER);
  arc(0, 0, r, r, 0, PI, OPEN);
    
  fill((phase<4) ? BACKG_COLOR : MOON_COLOR);
  float offset = abs(r/4 * (phase-4));
  float angle = (phase < 4) ? 0 : PI;
  arc(0, 0, r, offset, angle, angle+PI+1, OPEN);
  
  popMatrix();
}
