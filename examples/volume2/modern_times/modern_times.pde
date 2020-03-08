// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Modern Times (1936)


final color PAPER = color(240);
final color INK = color(45, 60, 40);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  
  translate(0.5*width, 0.3*height);
  
  background(PAPER);
  
  drawGear(   0.0,    0.0, 0.16*S, 0.04*S, 0, 0.01*S);
  drawGear(0.21*S, 0.21*S, 0.11*S, 0.04*S, 0, 0.01*S);
  drawGear(0.02*S, 0.35*S, 0.10*S, 0.04*S, 0, 0.01*S);
  drawGear(0.12*S, 0.52*S, 0.07*S, 0.04*S, 0, 0.01*S);
  
  save("modern-times.png");
}


void drawGear(float x, float y, float r, float s, float a, float h) {

  pushMatrix();
    fill(INK);
    noStroke();

    translate(x, y);
    rotate(a);
  
    rectMode(CENTER);
    ellipseMode(CENTER);
  
    final int N = (int)((r*PI) / s);
    for (int i=0; i<N; i++) {
      rect(r, 0, s, s);
      rotate(TWO_PI / N);
    }
    ellipse(0, 0, 2*r, 2*r);
  
    fill(PAPER);
    ellipse(0, 0, h, h); 
  popMatrix();
}
