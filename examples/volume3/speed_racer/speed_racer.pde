// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Speed Racer (2008)


final color PAPER = color(230, 165, 25);
final color INK = color(225, 40, 45);

final int SQUARES = 16;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = max(width, height) /  (float)SQUARES;
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  for (int i=0; i<SQUARES; i++) {
    for (int j=0; j<SQUARES; j++) {
      if ((i+j)%2 == 0) {
        rect(i*S, j*S, S, S);
      }
    }
  }
  
  save("speed-racer.png");
}
