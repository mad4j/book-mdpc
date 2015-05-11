// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Star Wars

final color SPACE_COLOR = color(34, 34, 34);
final color STEEL_COLOR = color(132, 132, 130);

final float MOON_SIZE = 300.0;
final float HOLE_SIZE = 0.23*MOON_SIZE;


void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(SPACE_COLOR);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  noStroke();
  
  fill(STEEL_COLOR);
  ellipse(0, 0, MOON_SIZE, MOON_SIZE);
  
  fill(SPACE_COLOR);
  rect(0, 0, MOON_SIZE, MOON_SIZE/60.0);
  ellipse(HOLE_SIZE, -HOLE_SIZE, HOLE_SIZE, HOLE_SIZE);
  
  save("star-wars.png");
}
