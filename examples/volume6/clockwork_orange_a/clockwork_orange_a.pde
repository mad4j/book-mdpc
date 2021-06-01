// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// A Clockwork Orange (1971)


final color PAPER = color(240, 80, 0);
final color INK1 = color(0);
final color INK2 = color(255);


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
  
  stroke(INK1);
  strokeWeight(30*U);
  fill(INK2);
  ellipse(0.0, 0.0, 0.5, 0.5);
  
  noStroke();
  fill(INK1);
  ellipse(0.0, 0.0, 0.2, 0.2);
  
  stroke(INK1);
  strokeCap(SQUARE);
  strokeWeight(40*U);
  
  for (int k=0; k<2; k++) {
    pushMatrix();
    for (int i=0; i<5; i++) {
      rotate(PI/(5+1));
      line(0.25, 0.0, 0.4, 0.0);
    }
    popMatrix();
    scale(1.0, -1.0);
  }
  
  save("a-clockwork-orange.png");
}
