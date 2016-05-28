// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Dr. Strangelove

final color PAPER = color(255);
final color INK = color(25, 25, 110);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  scale(1.0, -1.0);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  rectMode(CENTER);
  rect(0, 0, 100, 250, 150, 150, 150, 150);
  translate(0, 80);
  quad(-50, 0, 50, 0, 15, 100, -15, 100);
  translate(0, 70);
  quad(0, 0, 0, 50,  50, 75,  50, 25);
  quad(0, 0, 0, 50, -50, 75, -50, 25);
  
  save("dr-strangelove.png");
}