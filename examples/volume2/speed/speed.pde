// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Speed


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
  
  background(PAPER);
  
  strokeWeight(5);
  
  translate(width/2.0, height/2.0);
  rotate(TAILS);
  
  for (int i=0; i<=NOTCHES; i++) {
    
    stroke((i<NOTCHES/5) ? INK2 : INK1);
    
    line(80 + (i%2)*10, 0, 100, 0);

    rotate(-(PI+2*TAILS)/NOTCHES);
  }
  
  line(0, 0, -80, -20);
  
  save("speed.png");
}