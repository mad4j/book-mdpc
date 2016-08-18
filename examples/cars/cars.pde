// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Cars


final color PAPER = color(225, 63, 60);
final color INK = color(255);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  arc(0, 0, 0.8*width, 0.25*height, PI, TWO_PI-(QUARTER_PI/2.0), CHORD);
  arc(0.15*width, 0, 0.45*width, 0.4*height, PI+(0.5*QUARTER_PI), TWO_PI-(0.3*QUARTER_PI), CHORD);
  
  fill(PAPER);
  
  float s = 0.08*width;
  
  ellipse(-1.3*s, -s, s, s);
  ellipse( 1.3*s, -1.3*s, s, s);
  
  save("cars.png");
}