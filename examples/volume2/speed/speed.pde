// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Speed (1994)


final color PAPER = color(0);
final color INK1 = color(255);
final color INK2 = color(255, 0, 0);


final int NOTCHES = 16;
final float TAILS = PI/8.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  rotate(TAILS);
  scale(S);
  
  background(PAPER);
  
  strokeWeight(7*U);
  
  for (int i=0; i<=NOTCHES; i++) {
    
    stroke((i<NOTCHES/5) ? INK2 : INK1);
    
    line(0.3 + (i%2)*0.05, 0.0, 0.4, 0.0);

    rotate(-(PI+2*TAILS)/NOTCHES);
  }
  
  strokeCap(SQUARE);
  strokeWeight(10*U);
  line(0.00, 0.00, -0.30, -0.22);
  
  save("speed.png");
}
