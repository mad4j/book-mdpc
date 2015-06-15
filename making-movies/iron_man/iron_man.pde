
final color PAPER = color(180, 5, 30);
final color INK = color(255, 235, 0);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noStroke();
  
  ellipseMode(CENTER);
  
  fill(INK);
  ellipse(0, 0, 220, 220);
  
  fill(PAPER);
  ellipse(0, 0, 160, 160);
  
  rotate(TWO_PI/16);
  
  fill(PAPER);
  for (int i=0; i<8; i++) {
    rotate(TWO_PI/8);
    quad(0, 0, 220, 45, 220, -45, 0, 0);
    
  }
  
  fill(INK);
  ellipse(0, 0, 100, 100);
  
}
