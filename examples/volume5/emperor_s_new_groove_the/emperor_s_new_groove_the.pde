// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// The Emperor's new groove (2000)


final color PAPER = color(130, 170, 180);
final color INK1 = color(250, 200, 0);
final color INK2 = color(240, 160, 0);

final float DELTA = 0.03*PI;


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
  
  fill(INK1);
  
  stroke(INK2);
  
  strokeWeight(3*U);
  arc(0.0, 0.0, 0.9, 0.9, -PI+DELTA, 0.0-DELTA, PIE);
  
  pushMatrix();
  for(int i=1; i<6; i++) {
    rotate(-PI/6);
    line (0.0, 0.0, 0.45, 0.0);
    
  }
  popMatrix();
  
  arc(0.0, 0.05, 0.4, 0.4, -PI, 0.0, CHORD);
  
  save("the-emperor's-new-groove.png");
}