// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// The Avengers (2012)


final color PAPER = color(0);
final color INK = color(240, 30, 30);


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
  strokeWeight(40*U);
  
  ellipse(0.0, 0.0, 0.7, 0.7);
  
  strokeCap(SQUARE);
  strokeJoin(BEVEL);
  
  PShape s = createShape();
  
  s.beginShape();
    s.vertex(-0.25,  0.40);
    s.vertex( 0.10, -0.50);
    s.vertex( 0.10,  0.20);
    //s.line(-0.1, 0.0, 0.1, 0.0);
  s.endShape();
  
  shapeMode(CENTER);
  
  stroke(PAPER);
  strokeWeight(60*U);
  shape(s);
  
  stroke(PAPER);
  strokeWeight(60*U);
 // shape(s);
  
  save("the-avengers.png");
}
