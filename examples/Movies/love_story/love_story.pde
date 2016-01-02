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
  
  float size = min(width, height) * 0.35;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  pushMatrix();
  rotate(-QUARTER_PI);
  translate(-size/2.0, 0);
  
  ellipse(0, 0, size, size);
  rect(-size/2.0, 0, size, size);
  
  popMatrix();
  rotate(QUARTER_PI);
  translate(size/2.0, 0);
  
  ellipse(0, 0, size, size);
  
  save("love-story.png");
}