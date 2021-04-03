// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Ex Machina (2014)


final color PAPER = color(135, 100, 30);
final color INK = color(210, 180, 100);

final int SIDES = 6;
final float RADIUS = 0.06;
final float ANGLE = TWO_PI / SIDES;

final int COUNT = (int)(1.5 / RADIUS);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;

  scale(S);
  
  background(PAPER);
  
  fill(PAPER);
  stroke(INK);
  strokeWeight(2*U);
  
  float dx = 1.5*RADIUS;
  float dy = sqrt(3)*RADIUS;
  float of = 0.5*sqrt(3)*RADIUS;
  
  for (int i=0; i<COUNT; i++) {
    for (int j=0; j<COUNT; j++) {
      drawHex(i*dx, j*dy+(i%2*of), RADIUS);
    }
  }
  
  save("ex-machina.png");
}


void drawHex(float cx, float cy, float r) {
  
  beginShape();
  for (int i=0; i<SIDES; i++) {
    vertex(cx+r*cos(i*ANGLE), cy+r*sin(i*ANGLE));
  }
  endShape(CLOSE);
  
}
