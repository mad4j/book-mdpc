// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Pixels (2015)


final color PAPER = color(32);
final color INK1 = color(250, 175, 145);
final color INK2 = color(255, 245, 0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float SIZE = 0.02*min(width, height);
  final int DOTS = 8;
  
  translate(0.5*width, 0.5*height);
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
