// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Nosferatu (1922)


final color PAPER = color(140);
final color INK = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  background(PAPER);
  
  translate(0.5*width, 0.3*height);
  scale(S, -S);
  
  noStroke();
  fill(INK);
  
  beginShape();
    vertex(-0.10,  0.20);
    vertex( 0.10,  0.20);
    vertex( 0.25,  0.00);
    vertex( 0.10, -0.70);
    vertex(-0.10, -0.70);
    vertex(-0.25,  0.00);
  endShape(CLOSE);

  stroke(PAPER);
  strokeCap(SQUARE);
  strokeWeight(7*U);

  line(-0.05,  0.00,  0.05,  0.00);
  line( 0.00,  0.05,  0.00, -0.10);

  save("nosferatu.png");
}
