// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Blood Diamond (2006)


final color PAPER = color(55, 165, 85);
final color INK1 = color(255, 235, 230);
final color INK2 = color(165, 10, 30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float L = 0.08;
  final float U = 0.002;
  final float S = min(width, height);
  
  translate(0.5*width, 0.3*height);
  scale(L*S);
  
  background(PAPER);
  noStroke();
  
  fill(INK1);
  beginShape();
    vertex(-3, -1);
    vertex( 3, -1);
    vertex( 4,  0);
    vertex( 0,  5);
    vertex(-4,  0);
  endShape(CLOSE);
  
  translate(0, 7);
  
  fill(INK2);
  triangle(0.0, -1.4, 0.5, 0.0, -0.5, 0.0);
  arc(0, 0, 1, 1, 0, PI, OPEN);
  
  save("blood-diamond.png");
}
