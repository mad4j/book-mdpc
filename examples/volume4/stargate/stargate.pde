// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2017

// Stargate (1994)


final color PAPER = color(50, 60, 70);
final color INK = color(90, 115, 140);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeCap(SQUARE);
  strokeWeight(25*U);
  
  beginShape();
    vertex(-0.23, 0.48);
    vertex(-0.22, 0.50);
    vertex(-0.25, 0.50);
    vertex( 0.00, 0.00);
    vertex( 0.25, 0.50);
    vertex( 0.22, 0.50);
    vertex( 0.23, 0.48);
  endShape();
  
  strokeWeight(12*U);
  ellipse(0.00, -0.14, 0.08, 0.08);
  
  save("stargate.png");

}
