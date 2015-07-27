void setup() {
  size(512, 512);
  //noLoop();
}

void draw() {

  translate(width/2.0, height/2.0);
  
  background(20);
  fill(255, 255, 0, 125);

  noStroke();

  for (int q = 0; q < 5; q++) {
    float s = q*50;
    beginShape();
    for (int i = 0; i <= 360; i++) {
      float angle = (s+s/4)-abs(cos(radians(i*1.5-200))) * abs(cos(radians(i*1.5+200)) * s);
      float x = sin(radians(i)) * (angle);
      float y = cos(radians(i)) * (angle);
      vertex(x, y);
    }
    endShape();
  }
  
  save("flowers.png");
}

