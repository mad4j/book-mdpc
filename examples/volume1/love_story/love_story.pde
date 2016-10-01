// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Love Story

final color PAPER = color(240);
final color INK = color(190, 0, 50);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float s = 0.35 * min(width, height);
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  pushMatrix();
  rotate(-QUARTER_PI);
  translate(-s/2.0, 0);
  
  ellipse(0, 0, s, s);
  rect(-s/2.0, 0, s, s);
  
  popMatrix();
  rotate(QUARTER_PI);
  translate(s/2.0, 0);
  
  ellipse(0, 0, s, s);
  
  save("love-story.png");
}