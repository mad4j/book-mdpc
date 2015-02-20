
final color BACKG_COLOR = color(88, 197, 200);
final color FOREG1_COLOR = color(242, 243, 244);
final color FOREG2_COLOR = color(34, 34, 34);

void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
  
  float cX = width/2.0;
  float cY = height/3.0;
  
  background(BACKG_COLOR);
  
  noStroke();
  ellipseMode(CENTER);
  
  fill(FOREG1_COLOR);
  arc(cX, cY+24, 250, 150, PI+PI/10.0, TWO_PI-PI/10.0, CHORD);
  arc(cX, cY-24, 250, 150, 0+PI/10.0, PI-PI/10.0, CHORD);
  fill(FOREG2_COLOR);
  ellipse(cX, cY, 80, 80);
  
  save("monsters-inc.png");
}
