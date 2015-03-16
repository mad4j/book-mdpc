
final int RADIUS = 150;
final int FUZZINESS = 20;

void setup() {
  size(480, 640);
  noLoop();
}


void drawSpot(float x, float y, float radius, int fuzziness) {
  
  fill(34, 34, 34);
  noStroke();
  
  pushMatrix();

  translate(x, y);
  
  ellipse(0, 0, radius, radius);
  
  for (int i=0; i<fuzziness; i++) {
    ellipse(random(0.2*radius), random(0.2*radius), radius, radius);
  }
  
  popMatrix();
}

void draw() {
  
  background(242, 243, 244);
  
  randomSeed(10);
  for (int i=0; i<7; i++) {
    drawSpot(random(width), random(height), random(RADIUS), FUZZINESS);
  }
}