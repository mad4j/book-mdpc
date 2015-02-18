
final color BACKG_COLOR = color(230, 143, 172);
final color SMILE_COLOR = color(242, 243, 244);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(BACKG_COLOR);
  
  noStroke();
  ellipseMode(CENTER);
  
  fill(SMILE_COLOR);
  ellipse(width/2.0, height/3.0, 300, 200);
  fill(BACKG_COLOR);
  ellipse(width/2.0, height/3.0-50, 350, 200);
  
  save("alice-in-wonderland.png");

}
