// Manuale di Programmazione Cinematografica
// Volume 1

// Daniele Olmisani, 2016


// Dr. Strangelove (1964)


final color PAPER = color(240);
final color INK = color(25, 25, 110);

final float S = 0.10;

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(F);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  rectMode(CENTER);
  
  rect(0, 0, 2*S, 5*S, 3*S);
  
  translate(0, -1.5*S);
  quad(-S, 0, S, 0, 0.5*S, -2*S, -0.5*S, -2*S);
  
  translate(0, -1.5*S);
  quad(0, 0, 0, -S,  S, -1.5*S,  S, -0.5*S);
  quad(0, 0, 0, -S, -S, -1.5*S, -S, -0.5*S);
  
  save("dr-strangelove.png");
}