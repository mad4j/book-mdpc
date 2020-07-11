// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Memento (2000)


final color PAPER = color(30);
final color INK = color(240);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float SIZE = 0.4*min(width, height);
  
  translate(0.5*width, 0.5*height);
  rotate(-0.5*QUARTER_PI);
  
  background(PAPER);
  fill(INK);
  
  rectMode(CENTER);
  
  rect(0, 0, SIZE, 1.2*SIZE);
  translate(0, -0.1*SIZE);
  
  fill(PAPER);
  
  rect(0, 0, 0.9*SIZE, 0.9*SIZE);
  
  save("memento.png");
}
