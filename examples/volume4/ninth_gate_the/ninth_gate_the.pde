// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2017

// The Ninth Gate (1999)


final color PAPER = color(0);
final color INK = color(250, 180, 50);

final float A = TWO_PI / 5;
final float T = 0.05;
final float L1 = 0.4;
final float L2 = L1 - (T / tan(0.25*A));


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;  
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  for (int i=0; i<11; i++) {
  
    noStroke();
    fill(PAPER);
    quad(L2, 0.0, 0.0, 0.0, 0.0, T, L1, T);
    
    stroke(INK);
    strokeWeight(100*T*U);
    line(L2, 0.0, 0.0, 0.0);
    line(L1, T, 0.0, T);
    
    scale(-1, 1);
    
    if (i%2 != 0) {
      translate(L2, 0.0);
      rotate(-2*A);
      translate(L2, 0.0);
    }
  } 

  save("the-ninth-gate.png");
}