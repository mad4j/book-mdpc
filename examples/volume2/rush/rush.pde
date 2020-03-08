// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Rush (2013)


final color PAPER = color(244);
final color INK = color(227, 0, 30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  beginShape();
    vertex(0, 0);
    vertex(width, 0);
    vertex(width, 2*height/3.0);
    vertex(width/2.0, height/2.0);
    vertex(0, 2*height/3.0);
  endShape();
  
  save("rush.png");
}
