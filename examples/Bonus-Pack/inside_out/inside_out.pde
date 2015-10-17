
final color PAPER = color(240);
final color INK1 = color(150, 125, 185);
final color INK2 = color(110, 160, 215);
final color INK3 = color(245, 220, 130);
final color INK4 = color(155, 35, 40);
final color INK5 = color(150, 195, 82);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float delta = height/6.0;
  float size = 0.9*delta;
  
  translate(width/2.0, 0);
  
  background(PAPER);
  noStroke();
  
  translate(0, delta);
  fill(INK1);
  ellipse(0, 0, size, size);
  
  translate(0, delta);
  fill(INK2);
  ellipse(0, 0, size, size);
  
  translate(0, delta);
  fill(INK3);
  ellipse(0, 0, size, size);
  
  translate(0, delta);
  fill(INK4);
  ellipse(0, 0, size, size);
  
  translate(0, delta);
  fill(INK5);
  ellipse(0, 0, size, size);
  
  save("inside-out.png");
}