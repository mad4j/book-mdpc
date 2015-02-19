
final color BACKG_COLOR = color(34, 34, 34);
final color FOREG_COLOR = color(0, 186, 86);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  float offset = min(width, height) / 10.0;
  
  background(BACKG_COLOR);
  stroke(FOREG_COLOR);
  strokeCap(ROUND);
  strokeWeight(8);
  
  line(4*offset, 2*offset, 4*offset, 8*offset);
  line(6*offset, 2*offset, 6*offset, 8*offset);
  
  line(2*offset, 4*offset, 8*offset, 4*offset);
  line(2*offset, 6*offset, 8*offset, 6*offset);
  
  noFill();
  ellipseMode(CENTER);
  
  ellipse(3*offset, 3*offset, offset, offset);
  ellipse(7*offset, 5*offset, offset, offset);
  ellipse(5*offset, 5*offset, offset, offset);
  ellipse(5*offset, 7*offset, offset, offset);
  ellipse(7*offset, 3*offset, offset, offset);
  
  line(5*offset, 2.5*offset, 5*offset, 3.5*offset);
  line(3*offset, 4.5*offset, 3*offset, 5.5*offset);
  line(3*offset, 6.5*offset, 3*offset, 7.5*offset);
  line(7*offset, 6.5*offset, 7*offset, 7.5*offset);
  
  save("war-games.png");
  
}
