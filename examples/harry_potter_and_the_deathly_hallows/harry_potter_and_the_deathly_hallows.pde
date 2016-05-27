// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Harry Potter and the deathly hallows

final color PAPER = color(50, 55, 90);
final color INK = color(215, 175, 65);

final int RADIUS = 225;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  rotate(-HALF_PI);
  
  background(PAPER);
  stroke(INK);
  strokeWeight(8.0);
  noFill();
  
  ellipse(0, 0, RADIUS, RADIUS);
  
  float delta = TWO_PI/3;
  
  beginShape();
  for (int i=0; i<3; i++) {
    vertex(RADIUS*cos(i*delta), RADIUS*sin(i*delta));
  }
  endShape(CLOSE);
  
  line(-RADIUS/2, 0, +RADIUS, 0);
  
  save("harry-potter-and-the-deathly-hallows.png");
}