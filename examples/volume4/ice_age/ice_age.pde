// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Ice Age


final color PAPER = color(240);
final color INK1 = color(145, 95, 55);
final color INK2 = color(198, 155, 100);

final float DELTA = 0.12;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = min(width, height);
  
  background(PAPER);
  
  translate(0.5*width, 0.3*height);
  
  
  stroke(PAPER);
  strokeCap(SQUARE);
  strokeWeight(0.017*s);
  
  fill(INK1);
  ellipse(0, 0, 0.65*s, 0.35*s);
  
  fill(INK2);
  arc(0, 0.25*s, 0.58*s, 0.80*s, -DELTA*PI, (1+DELTA)*PI, CHORD);
  
  stroke(INK1);
  strokeWeight(0.03*s);
  line(0, 0, 0.05*s, -0.22*s);
  
  save("ice-age.png");
}