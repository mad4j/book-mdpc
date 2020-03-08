// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Kill Bill (2003)


final color PAPER = color(255, 195, 25);
final color INK = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float SIZE = 0.1 * min(width, height);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(SIZE);
  
  line(2*SIZE, 0, 2*SIZE, height);
  
  save("kill-bill.png");
}
