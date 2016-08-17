

final color PAPER = color(240);
final color INK = color (0);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  //float s = min(width, height) / 240.0;
  
  translate(width/2.0, height/1.5);
  scale(2);
  
  background(PAPER);
  stroke(INK);
  
  point( 0, 0);
  point( 0, 1);
  point(-1, 1);
  point( 1, 1);
  point( 0, 2);
  point(-1, 3);
  point( 1, 3);
  
  filter(BLUR);
  
  save("ant-man.png");
}