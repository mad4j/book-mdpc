// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Thor (2011)


final color PAPER = color(105, 10, 170);
final color INK = color(255, 205, 0);

final int STRIPES = 6;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.6 * min(width, height);
  
  translate(width/2.0, height/4.0);
  
  background(PAPER);
  fill(INK);
  stroke(PAPER);
  strokeWeight(0.01*s);
  
  rectMode(CENTER);
  rect(0, 0.5*s, -0.2*s, 1.6*s, 0.05*s);
  rect(0, 0, s, 0.5*s, 0.1*s);
  
  stroke(PAPER);
  line(-0.25*width, -height, -0.25*width, height);
  line( 0.25*width, -height,  0.25*width, height);
  
  translate(0, 0.6*s);
  
  strokeWeight(0.02*s);
  
  for (int i=0; i<STRIPES; i++) {
    float d = 0.1*s;
    line(-d, i*d, d, (i+1)*d);
  }
  
  save("thor.png");
}
