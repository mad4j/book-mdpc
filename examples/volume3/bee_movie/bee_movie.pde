// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Bee Movie (2007)


final color PAPER = color(70, 25, 20);
final color INK = color(250, 220, 55);

final int STRIPES = 3;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float dH = height / (2*STRIPES);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  for (int i=0; i<STRIPES; i++) {
    
    rect(0, 0, width, dH);
    translate(0, 2*dH);
  }
  
  save("bee-movie.png");
}
