
final color PAPER = color(240, 240, 240);
final color INK = color(190, 0, 50);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  background(PAPER);
  stroke(INK);
  line(0, height/2.0, width, height/2.0);
  
  save("the-thin-red-line.png");
}
  