// Manuale di Programmazione Cinematografica - Volume 5
// Daniele Olmisani, 2020

// The Great Dictator (1940)


final color PAPER = color(0);
final color INK = color(255);

final float L = 0.17;
final float W = 0.15;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = min(width, height);
    
  translate((0.5-0.5*L)*width, (0.5-L)*height);
  scale(F);
  
  background(PAPER);
  
  stroke(INK);
  strokeCap(SQUARE);
  strokeWeight(W);
  
  for (int i=0; i<2; i++) {
    line(-L, -L,  L,  L);
    line( L, -L, -L,  L);
    translate(0.75*L, 2.5*L);
  }
    
  save("the-great-dictator.png");
}
