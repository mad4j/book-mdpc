// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// The Lego Movie (2014)


final color PAPER = color(240,215, 125);
final color INK1 = color(50);
final color INK2 = color(220, 130, 180);
final color INK3 = color(120, 210, 220);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.2*height);
  rotate(-0.1*PI);
  scale(S);
  
  background(PAPER);
  
  noStroke();
  rectMode(CENTER);
  
  fill(INK1);
  rect(0.00, 0.00, 1.50, 1.00);
  
  fill(INK2);
  rect(0.00, 0.40, 1.50, 0.14);
  
  fill(INK3);
  rect(0.00, 0.23, 1.50, 0.14);
  
  save("the-lego-movie.png");
}
