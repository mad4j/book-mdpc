// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Big Hero 6 (2014)


final color PAPER = color(245);
final color INK = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float size = 0.125*width;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  ellipse(-width/4.0, 0, size, size);
  ellipse( width/4.0, 0, size, size);
  
  stroke(INK);
  strokeWeight(size/10.0);
  line(-width/4.0, 0, width/4.0, 0);
  
  save("big-hero-6.png");
}
