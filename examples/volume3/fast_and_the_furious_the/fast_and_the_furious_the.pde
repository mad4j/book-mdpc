// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Fast and the Furious (2001)


final color PAPER = color(30);
final color INK = color(240);

final int SIZE = 200;


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
  
  noFill();
  
  stroke(INK);
  strokeWeight(5*U);
  
  ellipse(0, 0, 0.5, 0.5);
  
  line(-0.15, 0.00,  0.15,  0.00);
  line( 0.00, 0.05,  0.00, -0.05);
  line(-0.15, 0.05, -0.15, -0.05);
  line( 0.15, 0.05,  0.15, -0.05);
  
  save("the-fast-and-the-furious.png");
}
