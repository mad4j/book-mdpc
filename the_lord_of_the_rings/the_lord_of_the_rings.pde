
final color GOLD = color(243, 220, 0);
final color PAPER = color(242, 243, 244);

final String TITLE = "The Lord of The Ring";

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
 
  noStroke();
  background(PAPER);
  
  ellipseMode(CENTER);
  
  fill(GOLD);
  ellipse(width/2.0, height/2.0, 300, 300);
  
  fill(PAPER);
  ellipse(width/2.0, height/2.0, 225, 225);
  
  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text(TITLE, width/2.0, height-16*2);
  
  save("the-lord-of-the-rings.png");
}
