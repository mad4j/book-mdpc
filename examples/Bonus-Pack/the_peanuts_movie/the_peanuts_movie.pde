
final color PAPER = color(245, 220, 110);
final color INK = color(180, 50, 50);

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(width/2.0, 2*height/3.0);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  rectMode(CENTER);
  rect(0, 0, 200, 150);
  
  translate(0, -120);
  quad(-100, -100, 100, -100, 150, 100, -150, 100);
  
  save("the-peanuts-movie.png");
}