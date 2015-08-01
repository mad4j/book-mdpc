

final int STEPS = 1000;
final int SIZE = 200;
final int ROUNDS = 4;

void setup() {
  size(512, 512);
  noLoop();
}

void draw() {

  translate(width/2.0, height/2.0);
  
  noFill();
  stroke(0);
  strokeWeight(4.0);

  float dr = (float)SIZE / (float)STEPS;
  float da = (ROUNDS*TWO_PI) / STEPS;

  beginShape();
  for (int i=0; i<1000; i++) {
    float r = i*dr;
    float a = i*da;
    vertex(r*cos(a), r*sin(a));
  }
  endShape();
}

