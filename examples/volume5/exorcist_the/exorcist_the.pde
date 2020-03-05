// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// The Exorcist (1973)


final color PAPER = color(30);
final color INK = color(225);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.6*height);
  scale(S);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(25*U);
  strokeCap(SQUARE);
  
  line( 0.0,  0.2,  0.0, -0.5);
  line(-0.2,  0.0,  0.2,  0.0);
  
  save("the-exorcist.png");
}
