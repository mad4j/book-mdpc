// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Harry Potter and the deathly hallows


final color PAPER = color(50, 55, 90);
final color INK = color(215, 175, 65);

final int RADIUS = 225;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float r = 0.5 * min(width, height);
  println(r);
  float d = TWO_PI/3;
  
  translate(width/2.0, height/2.0);
  rotate(-HALF_PI);
  
  background(PAPER);
  stroke(INK);
  strokeWeight(0.03*r);
  noFill();
  
  ellipse(0, 0, r, r);

  beginShape();
  for (int i=0; i<3; i++) {
    vertex(r*cos(i*d), r*sin(i*d));
  }
  endShape(CLOSE);
  
  line(-r/2, 0, +r, 0);
  
  save("harry-potter-and-the-deathly-hallows.png");
}