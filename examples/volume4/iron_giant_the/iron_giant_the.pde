// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// The Iron Giant (1999)


final color PAPER = color(110, 190, 190);
final color INK = color(20, 5, 60);

final float L = 0.7;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.6*height);
  scale(S);
  
  background(PAPER);
  strokeWeight(4*U);
  
  fill(INK);

  noStroke();
  rectMode(CENTER);
  rect(0, 0, L, 0.6*L);
  ellipse(0, -0.3*L, L, L);
  
  fill(PAPER);
  ellipse(-0.24*L, -0.24*L, 0.3*L, 0.3*L);
  ellipse( 0.24*L, -0.24*L, 0.3*L, 0.3*L);
  
  fill(INK);
  stroke(PAPER);
  quad(0, 0, -0.1*L, -0.8*L, 0, -0.9*L, 0.1*L, -0.8*L);
  
  save("the-iron-giant.png");
}