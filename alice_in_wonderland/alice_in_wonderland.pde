// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Alice in Wonderland

final color PAPER = color(230, 143, 172);
final color INK = color(242, 243, 244);

final int TEETH = 12;
final int SIZE = 300;


void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  noStroke();
  ellipseMode(CENTER);
  
  fill(INK);
  ellipse(0, 0, SIZE, SIZE);
  
  fill(PAPER);
  ellipse(0, -0.17*SIZE, 1.08*SIZE, SIZE);
  
  stroke(PAPER);
  for (int i=-TEETH; i<TEETH; i++) {
    line(i*width/TEETH, 0, i*width/TEETH, height); 
  }
  
  save("alice-in-wonderland.png");
}
