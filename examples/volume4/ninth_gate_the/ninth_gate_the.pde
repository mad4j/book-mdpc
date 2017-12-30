// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// The Ninth Gate (1999)


final color PAPER = color(0);
final color INK = color(250, 180, 50);

final float A = TWO_PI / 5;
final float T = 0.05;
final float R1 = 0.4;
final float R2 = R1 - (T / tan(0.25*A));


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
    quad(-R2, 0.0, 0.0, 0.0, 0.0, T, -R1, T);
    
    stroke(INK);
    strokeWeight(5*U);
    line(-R2, 0.0, 0.0, 0.0);
    line(-R1, T, +0.0, T);
    
    scale(-1, 1);
    
    if (i%2 != 0) {
      translate(-R2, 0.0);
      rotate(2*A);
      translate(-R2, 0.0);
    }
  } 

  save("the-ninth-gate.png");
}