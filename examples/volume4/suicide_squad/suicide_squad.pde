// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Suicide Squad


final color PAPER = color(200, 0, 75);
final color INK = color(0);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float s = 0.02 * min(width, height);
  float l = 4*s;
  
  background(PAPER);
  strokeWeight(s);
  stroke(INK);
  noFill();
  
  translate(0.33*width, 0.33*height);
  line(-l, -l, l, l);
  line(l, -l, -l, l);
  
  resetMatrix();
  translate(0.67*width, 0.33*height);
  line(-l, -l, l, l);
  line(l, -l, -l, l);
  
  resetMatrix();
  translate(0.50*width, 0.45*height);
  rotate(0.1*PI);
  line(3*l, 0, 4*l, 0);
  rotate(0.8*PI);
  line(3*l, 0, 4*l, 0);
  
  resetMatrix();
  translate(0.50*width, 0.45*height);
  arc(0, 0, 7*l, 7*l, 0.1*PI, 0.9*PI);
  
  save("suicide-squad.png");
}