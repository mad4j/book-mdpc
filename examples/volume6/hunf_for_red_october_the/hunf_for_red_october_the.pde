// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// The Hunt for Red October (1990)


final color PAPER = color(40);
final color INK1 = color(50, 180, 50);
final color INK2 = color(135, 50, 60);
 

final float RADIUS = 0.4;
final int TICK_COUNT = 120;
final int CIRCLE_COUNT = 8;

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  stroke(INK1);
  strokeCap(SQUARE);
  
  strokeWeight(U);
  for (int i=0; i<CIRCLE_COUNT; i++) {
    float r = (i*(1.0/CIRCLE_COUNT))*2*RADIUS;
    ellipse(0.0, 0.0, r, r);
  }
  
  strokeWeight(3*U);
  ellipse(0.0, 0.0, 2*RADIUS, 2*RADIUS);
  
  for (int i=0; i<TICK_COUNT; i++) {
    float d = (i%10 == 0) ? 1.05 : 1.03;
    line(RADIUS, 0.0, d*RADIUS, 0.0);
    rotate(TWO_PI / TICK_COUNT);
  }
  
  rotate(-0.1*HALF_PI);
  
  float da = (0.3*HALF_PI) / TICK_COUNT;
  strokeWeight(10*U);
  for (int i=0; i<TICK_COUNT; i++) {
    stroke(0x0FFFFFFF & INK1);
    line(0.0, 0.0, RADIUS, 0.0);
    da = 1.01*da;
    rotate(-da);
  }

  fill(INK2);
  noStroke();
  ellipse(0.2, 0.1, 0.02, 0.02);
  
  save("the-hunt-for-red-october.png");
}
