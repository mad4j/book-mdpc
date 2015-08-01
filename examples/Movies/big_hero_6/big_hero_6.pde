
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Big Hero 6

final color PAPER = color(244);
final color INK = color(32);

final int SIZE = 60;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  ellipse(-width/4.0, 0, SIZE, SIZE);
  ellipse( width/4.0, 0, SIZE, SIZE);
  
  stroke(INK);
  strokeWeight(SIZE/10.0);
  line(-width/4.0, 0, width/4.0, 0);
  
  save("big-hero-6.png");
}
