
final color PAPER = color(165, 40, 60);
final color INK1 = color(115, 220, 245);
final color INK2 = color(30, 30, 30);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  strokeWeight(10.0);
  strokeJoin(ROUND);
  
  fill(INK1);
  stroke(INK1);
  triangle(-120, 0, 120, 0, 0, 150);
  
  fill(INK2);
  stroke(INK2);
  triangle(-100, 10, 100, 10, 0, 120);
}