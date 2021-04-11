// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Up (2009)


final color PAPER = color(80, 140, 185);
final color INK = color(255);


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
  stroke(INK);
  strokeWeight(U);
  
  ellipse(0.0, -0.03, 0.2, 0.2);
  ellipse(-0.03, 0.02, 0.2, 0.2);
  ellipse(0.02, 0.04, 0.2, 0.2);
  
  triangle(0.0, 0.31, -0.07, 0.36, 0.07, 0.36);
  
  rectMode(CENTER);
  rect(0.0, 0.4, 0.12, 0.08);
  
  //stroke(INK);
  //strokeWeight(U);
  
  for (int i=0; i<=10; i++) {
    line(0.0, 0.32, -0.12+i*0.022, 0.0);
  }
  
  save("up.png");
}
