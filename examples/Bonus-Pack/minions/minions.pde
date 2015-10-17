// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Minions

final color PAPER = color(255, 255, 15);
final color INK1 = color(40, 40, 40);
final color INK2 = color(240, 240, 240);
final color INK3 = color(150, 150, 150);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  stroke(INK1);
  strokeWeight(40.0);
  line(0, height/5.0, width, height/5.0);
  
  fill(INK2);
  stroke(INK3);
  strokeWeight(25.0);
  ellipse(width/2.0, height/5.0, 200, 200);
  
  fill(INK1);
  noStroke();
  ellipse(width/2.0, height/5.0, 25, 25);
  
  save("minions.png");
}