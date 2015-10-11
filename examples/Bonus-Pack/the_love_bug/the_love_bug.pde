
final color PAPER = color (240, 240, 240);
final color INK1 = color(200, 50, 55);
final color INK2 = color(20, 80,135);
final color INK3 = color(30, 30, 30);

PFont font;

void setup() {
  size(480, 640);
  noLoop();
  
  font = loadFont("Cleanvertising-Black-96.vlw");
}

void draw() {
  background(PAPER);
  
  stroke(INK1);
  strokeWeight(25.0);
  line(2*width/3.0, 0, 2*width/3.0, height);
  
  stroke(INK2);
  strokeWeight(50.0);
  line(2*width/3.0+50, 0, 2*width/3.0+50, height);
  
  stroke(INK3);
  strokeWeight(2.0);
  ellipse(2*width/3.0, height/3.0+5, 124, 124);
  
  fill(INK3);
  textFont(font);
  textAlign(CENTER, CENTER);
  text("53", 2*width/3.0, height/3.0);
  
  save("the-love-bug.png");
}