
final color PAPER = color(240, 240, 240);
final color INK = color(30, 30, 30);

final int SIZE = 250;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {

  translate(width/2.0, height/2.0);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  ellipseMode(CENTER);
  arc(0, -0.05*SIZE, SIZE, SIZE, -PI, 0);
  
  rectMode(CENTER);
  rect(0, 0.05*SIZE, 1.05*SIZE, 0.25*SIZE, 10);
  
  save("one-flew-over_the-cukoo-s-nest.png");
}