// Manuale di Programmazione Cinematografica - Volume 5
// Daniele Olmisani, 2019

// King's Speech (2010)


final color PAPER = color(195, 170, 20);
final color INK = color(195, 60, 30);


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
  
  stroke(INK);
  strokeWeight(20*U);
  
  noFill();
  ellipse(0.0, 0.0, 0.5, 0.5);
  ellipse(0.0, 0.0, 0.2, 0.2);
  
  fill(INK);
  ellipse(0.0, 0.0, 0.05, 0.05);
  
  strokeCap(SQUARE);
  strokeWeight(7*U);
  
  for (int i=0; i<4; i++) {
    rotate(HALF_PI);
    line(0.0,  0.11, 0.25,  0.0);
    line(0.0, -0.11, 0.25,  0.0);
  }
  
  save("king-s-speech.png");
}
