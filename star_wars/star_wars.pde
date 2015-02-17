
final color SPACE_COLOR = color(34, 34, 34);


void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(SPACE_COLOR);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  noStroke();
  
  fill(127);
  ellipse(width/2.0, height/2.0, 300, 300);
  
  fill(SPACE_COLOR);
  rect(width/2.0, height/2.0, 300, 5);
  ellipse(width/2.0+70, height/2.0-70, 70, 70);
  
  save("star-wars.png");
}
