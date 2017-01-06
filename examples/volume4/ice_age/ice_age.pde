// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Ice Age (2002)
// Animation, Adventure, Comedy
// http://www.imdb.com/title/tt0268380/


final color PAPER = color(230, 245, 250);
final color INK1 = color(145, 95, 55);
final color INK2 = color(198, 155, 100);

final float DELTA = 0.12;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 1.0 / S;
  
  background(PAPER);
  
  translate(0.5*width, 0.3*height);
  scale(S);
  
  stroke(PAPER);
  strokeCap(SQUARE);
  strokeWeight(7*U);
  
  fill(INK1);
  ellipse(0, 0, 0.65, 0.35);
  
  fill(INK2);
  arc(0, 0.25, 0.58, 0.80, -DELTA*PI, (1+DELTA)*PI, CHORD);
  
  stroke(INK1);
  strokeWeight(15*U);
  line(0, 0, 0.05, -0.22);
  
  save("ice-age.png");
}