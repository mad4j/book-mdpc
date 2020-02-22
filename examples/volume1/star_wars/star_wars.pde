// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Star Wars (1997)

final color PAPER = color(34, 34, 34);
final color INK = color(132, 132, 130);

final float MOON = 300.0;
final float HOLE = 70.0;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  noStroke();
  
  fill(INK);
  ellipse(0, 0, MOON, MOON);
  
  fill(PAPER);
  rect(0, 0, MOON, MOON/60.0);
  ellipse(HOLE, -HOLE, HOLE, HOLE);
  
  save("star-wars.png");
}
