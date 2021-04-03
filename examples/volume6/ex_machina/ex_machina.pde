// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Ex Machina (2014)


final color PAPER = color(140);
final color INK = color(195, 200, 205);

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
  
  float dx = 1.50*RADIUS;
  float dy = sqrt(3)*RADIUS;
  float of = 0.50*dy;
  
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
