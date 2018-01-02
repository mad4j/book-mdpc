// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// Star Trek (1979)


final color PAPER = color(0);
final color INK = color(240);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  ellipse(0.0, 0.0, 0.4, 0.4);
  
  stroke(INK);
  strokeWeight(35*U);
  line(0.0, 0.0, 0.0, 0.4);
  
  strokeWeight(20*U);
  line(0.0, 0.25, -0.15, 0.4);
  line(0.0, 0.25,  0.15, 0.4);
  
  strokeWeight(20*U);
  line(-0.15, 0.25, -0.15, 0.6);
  line( 0.15, 0.25,  0.15, 0.6);
 
  save("star-trek.png");
}