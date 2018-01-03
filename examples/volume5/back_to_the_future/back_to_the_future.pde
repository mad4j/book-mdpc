// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// Back to the Future (1985)


final color PAPER = color(20, 20, 75);
final color INK = color(255, 125, 35);

final float A1 = HALF_PI;
final float A2 = HALF_PI + QUARTER_PI;


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
  
  rotate(HALF_PI);
  
  for (int i=0; i<3; i++) {
  
    stroke(INK);
    strokeWeight(10*U);
    line(0.0, 0.0, 0.3, 0.0);
    
    fill(INK);
    noStroke();
    ellipse(0.3, 0.0, 0.08, 0.08);
    
    noFill();
    stroke(INK);
    strokeWeight(12*U);
    ellipse(0.3, 0.0, 0.2, 0.2);
    
    rotate((i%2 == 0) ? A2 : A1);
  }
  
  save("back-to-the-future.png");
}