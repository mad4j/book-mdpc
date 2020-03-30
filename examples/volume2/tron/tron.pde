// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Tron (1982)


final color PAPER = color(30);
final color[] INKS = {
  color(0, 135, 85),
  color(255, 50, 50),
  color(55, 205, 250),
};


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
  strokeJoin(ROUND);
  strokeCap(SQUARE);
  
  stroke(INKS[0]);
  strokeWeight(U);
  for (float i=-0.6; i<=0.6; i+=0.1) {
    line(   i, -1.0,   i, 1.0);
    line(-1.0,    i, 1.0,   i);
  } 
  
  
  for (int i=1; i<INKS.length; i++) {
    
    translate(0.05, 0.06);
    
    stroke(INKS[i]);
    strokeWeight(10*U);
    beginShape();
      vertex(0.0,  0.7); 
      vertex(0.0,  0.2);
      vertex(0.2,  0.2); 
      vertex(0.2, -0.1);
    endShape();
    
    strokeWeight(15*U);
    line(0.2, -0.12, 0.2, -0.04);
  }

  save("tron.png");
}
