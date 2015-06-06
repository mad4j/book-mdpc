// Making Movies
// 2015, Daniele Olmisani

final color PAPER = color(32);
final color INK1 = color(250, 175, 145);
final color INK2 = color(255, 245, 0);

final int SIZE = 10;
final int DOTS = 8;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  scale(SIZE);
  
  background(PAPER);
  
  stroke(INK1);
  
  for (int i=0; i<DOTS; i++) {
    point(i*3, 0);
  }
  
  noStroke();
  fill(INK2);
  arc(-SIZE/2, 0, SIZE, SIZE, QUARTER_PI, TWO_PI-QUARTER_PI, PIE);
  
  save("pixels.png");
  
}
