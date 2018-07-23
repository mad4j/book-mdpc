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
  
  float keyWidth = 1.0 / (KEYS+2);
  float keyHeight = 3.8 * keyWidth;
  
  background(PAPER);
  strokeWeight(2*U);
  
  fill(INK);
  for(int i=0; i<KEYS; i++) {
    rect(0+(i-KEYS/2.0)*keyWidth, 0, keyWidth, keyHeight);
  }
  
  fill(PAPER);
  for(int i=0; i<KEYS-1; i++) {
    if (i != 2) {
      rect((0.25*keyWidth)+(i-(KEYS-1)/2.0)*keyWidth, 0, 0.50*keyWidth, 0.65*keyHeight);
    }
  }
  
  save("the-pianist.png");
}
