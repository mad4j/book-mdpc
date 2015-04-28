
final color GOLD = color(243, 220, 0);
final color PAPER = color(242, 243, 244);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
 
  background(PAPER);
  
  noFill();
  stroke(GOLD);
  strokeWeight(40.0);
  
  ellipseMode(CENTER);
  
  ellipse(width/2.0, height/2.0, 300, 300);
  
  save("the-lord-of-the-rings.png");
}
