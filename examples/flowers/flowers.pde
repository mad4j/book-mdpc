float clicks;
 
void setup() {
  size(640, 640);
  noStroke();
  fill(255, 255, 0, 125);
}
 
void draw() {
  background(20);
  translate(width/2, height/2);
  for (int q = 0; q < 5; q++) {
    float s = q*50;
    beginShape();
    for (int i = 0; i <= 360; i++) {
      float angle = (s+s/4)-abs(cos(radians(i*1.5-frameCount))) * abs(cos(radians(i*1.5+frameCount)) * s);
      float x = sin(radians(i)) * (angle);
      float y = cos(radians(i)) * (angle);
      vertex(x, y);
    }
    endShape();
  }
}

