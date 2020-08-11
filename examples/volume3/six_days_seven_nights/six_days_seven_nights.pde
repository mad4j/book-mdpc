// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Six Days Seven Nights (1998)


final color PAPER = color(95, 80, 151);
final color INK1 = color(255, 255, 0);
final color INK2 = color(245, 245, 240);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  background(PAPER);
  
  translate(0.5*width, 0);
  scale(S);
  
  int phase = 1;
  for (int j=0; j<2; j++) {
    for (int i=-1; i<2; i++) {
      drawSun(0.25*i, 0.20+0.23*j, 0.08, 8);
      drawMoon(0.25*i, 0.66+0.23*j, 0.12, phase++);
    }
  }
  drawMoon(0.00, 1.12, 0.12, 8);
  
  save ("six-days-seven-nights.png");
}


void drawSun(float x, float y, float r, int rays) {
  
  fill(INK1);
  stroke(INK1);
  strokeWeight(r/6.0);
  
  pushMatrix();
  
  translate(x, y);
  ellipseMode(CENTER);
  ellipse(0, 0, r, r);
  
  float offset = r/2.0 + r/4.0;
  
  for (int i=0; i<=rays; i++) {
    line(offset, 0, offset+r/2.0, 0);
    rotate(TWO_PI / rays);
  }
  
  popMatrix();
}


void drawMoon(float x, float y, float r, int phase) {
  
  pushMatrix();
  
  translate(x, y);
  rotate(HALF_PI/2.0);
  
  fill(INK2);
  noStroke();
  
  ellipseMode(CENTER);
  arc(0, 0, r, r, 0, PI, OPEN);
    
  fill((phase<4) ? PAPER : INK2);
  float offset = abs(r/4 * (phase-4));
  float angle = (phase < 4) ? 0 : PI;
  arc(0, 0, r, offset, angle, angle+PI+1, OPEN);
  
  popMatrix();
}
