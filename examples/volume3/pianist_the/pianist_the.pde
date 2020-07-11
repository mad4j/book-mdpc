// Manuale di Programmazione Cinematografica - Volume 3
// Daniele Olmisani, 2016

// The Pianist (2002)


final color PAPER = color(0, 0, 0);
final color INK = color(250, 250, 250);

final int KEYS = 7;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.50*width, 0.25*height);
  scale(S);
  
  float keyW = 1.0 / (KEYS+2);
  float keyH = 3.8 * keyW;
  
  background(PAPER);
  strokeWeight(2*U);
  
  fill(INK);
  for(int i=0; i<KEYS; i++) {
    rect(0+(i-KEYS/2.0)*keyW, 0, keyW, keyH);
  }
  
  fill(PAPER);
  for(int i=0; i<KEYS-1; i++) {
    if (i != 2) {
      rect((0.25*keyW)+(i-(KEYS-1)/2.0)*keyW, 0, 0.50*keyW, 0.65*keyH);
    }
  }
  
  save("the-pianist.png");
}
