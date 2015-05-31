
final color PAPER = color(96, 78, 151);
final color INK1 = color(225, 0, 50);
final color INK2 = color(243, 225, 0);

final int SIZE = 200;

final int RAYS = 7;
final int DELTA = 2;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK1);
  arc(0, -DELTA, SIZE, SIZE, -PI, 0, OPEN);
  
  fill(INK2);
  arc(0, +DELTA, SIZE, SIZE, 0, +PI, OPEN);
  
  stroke(INK2);
  strokeWeight(SIZE / 20);
  
  for (int i=0; i<RAYS; i++) {
    line(0.6*SIZE, 0, 0.6*SIZE+0.25*SIZE, 0);
    rotate(PI / (RAYS-1));
  }
  
  save("from-dusk-till-dawn.png");
}
