// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Cars


final color PAPER = color(205, 40, 10);
final color INK = color(255);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.8*width;
  float d = 0.1*s;
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  arc(0, 0, s, 0.40*s, PI, TWO_PI-(0.5*QUARTER_PI), CHORD);
  arc(0.20*s, 0, 0.55*s, 0.65*s, PI+(0.5*QUARTER_PI), TWO_PI-(0.3*QUARTER_PI), CHORD);
  
  fill(PAPER);
  
  
  
  ellipse(-1.3*d,     -d, d, d);
  ellipse( 1.3*d, -1.3*d, d, d);
  
  save("cars.png");
}