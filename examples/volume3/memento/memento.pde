// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Memento (2000)


final color PAPER = color(30);
final color INK = color(240);

//final int SIZE = 200;


void setup() {
  size(1535, 2047);
  //size(480, 640);
  noLoop();
}


void draw() {
  
  final float SIZE = 0.4*min(width, height);
  
  translate(0.5*width, 0.5*height);
  rotate(-QUARTER_PI/2);
  
  background(PAPER);
  fill(INK);
  
  rectMode(CENTER);
  
  rect(0, 0, SIZE, 1.2*SIZE);
  translate(0, -0.1*SIZE);
  
  fill(32);
  
  rect(0, 0, 0.9*SIZE, 0.9*SIZE);
  
  save("memento.png");
}
