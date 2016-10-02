
final color PAPER = color(35);
final color INK = color(240);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float s = 0.8 * min(width, height);
  
  translate(0.5*width, 0.3*height);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  ellipse(0, 0, s, 0.15*s);
  filter(BLUR, 6);
  
  ellipse(0, 0, 0.3*s, 0.2*s);
  filter(BLUR, 6);
}