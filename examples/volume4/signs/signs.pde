// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2017

// Signs (2002)


final color PAPER = color(110, 155, 40);
final color INK = color(205, 230, 150);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
 float s = 0.4 * min(width, height);
  
  translate(0.5*width, 0.7*height);
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeCap(SQUARE);
  strokeWeight(0.2*s);
  
  ellipse(0, 0, s, s);
  arc(0, -1.5*s, 1.7*s, 1.2*s, 0, PI);
  
  line(0, -0.4*s, 0, -1.8*s);
  
  line(-0.8*s, -0.15*s, -0.8*s, 0.15*s);
  line( 0.8*s, -0.15*s,  0.8*s, 0.15*s);
  
  noStroke();
  fill(INK);
  ellipse(0, -1.8*s, 0.5*s, 0.5*s);
  
  save("signs.png");
}
