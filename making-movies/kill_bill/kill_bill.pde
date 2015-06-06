// Making Movies
// 2015, Daniele Olmisani

final color PAPER = color(255, 195, 25);
final color INK = color(32, 32, 32);

final int SIZE = 50;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(SIZE);
  
  line(2*SIZE, 0, 2*SIZE, height);
  
  save("kill-bill.png");
}
