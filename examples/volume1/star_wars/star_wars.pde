// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Star Wars (1977)


final color PAPER = color(35);
final color INK = color(130);

void setup() {  
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  noStroke();
  
  fill(INK);
  ellipse(0.0, 0.0, 0.6, 0.6);
  
  fill(PAPER);
  rect(0, 0, 0.6, 0.01);
  ellipse(0.13, -0.13, 0.15, 0.15);
  
  save("star-wars.png");
}
