
void setup() {
  
  size(500, 500);
  noLoop();
}


void draw() {
 
  noStroke();
  background(242, 243, 244);
  
  ellipseMode(CENTER);
  
  fill(255, 255, 0);
  ellipse(250, 250, 200, 200);
  
  fill(242, 243, 244);
  ellipse(250, 250, 150, 150);
  
  save("the-lord-of-the-rings.png");
  
}
