// Manuale di Programmazione Cinematografica - Volume 5
// Daniele Olmisani, 2019

// The Incredibles (2004)


final color PAPER = color(30, 175, 210);
final color INK1 = color(0, 0, 0);
final color INK2 = color(200, 30, 35);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  randomSeed(0);
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  
  fill(INK1);
  noStroke();
  
  ellipse(0.0, -0.6, 1.8, 0.6);
  
  fill(INK2);
  stroke(PAPER);
  strokeWeight(12*U);
  
  ellipse(0.00, -0.30, 0.35, 0.25);
  
  fill(INK1);
  noStroke();
  
  quad(-0.08, -0.15, 0.08, -0.15, 0.12, 0.40, -0.12, 0.40);
  
  save("the-incredibles.png");
}
