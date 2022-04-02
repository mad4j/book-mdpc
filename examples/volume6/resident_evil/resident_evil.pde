// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// Resident Evil (2002)


final int COUNT = 8;
final float L = 0.5;

final color PAPER = color(60);
final color INK1 = color(255);
final color INK2 = color(235, 25, 35);


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
  
  for (int i=0; i<COUNT; i++) {
    
    rotate(-QUARTER_PI / 2);
    
    fill((i%2==0) ? INK2 : INK1);
    stroke(PAPER);
    strokeWeight(20*L*U);
    triangle(0.0, 0.0, L, 0.0, L*cos(QUARTER_PI), L*sin(QUARTER_PI));
    
    rotate(QUARTER_PI / 2);
    
    fill(PAPER);
    noStroke();
    ellipse(L, 0.0, 0.5*L, L);
    
    rotate(QUARTER_PI);
  }
  
  save("residel-evil.png");
}
