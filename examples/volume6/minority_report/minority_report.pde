// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Minority Report (2002)


final color PAPER = color(20);
final color INK = color(95, 135, 205);

final float RADIUS = 0.6;


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
  
  
  noStroke();
  
  fill(INK);
  ellipse (0.0, 0.0, RADIUS, RADIUS);
  
  fill(PAPER);
  for (int i=0; i<3; i++) {
    ellipse(0.0, 0.75*RADIUS, RADIUS, RADIUS);
    rotate(TWO_PI / 3);
  }
  
  noFill();
  stroke(INK);
  strokeWeight(10*U);
  ellipse(0.0, 0.0, 1.1*RADIUS, 1.1*RADIUS);
  
  save("minority-report.png");
}
