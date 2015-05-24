
final int SIZE = 240;

void setup() {
  size(SIZE, SIZE);
  noLoop();
}

void draw() {
  
  float factor = SIZE/TWO_PI;
  
  translate(width/2.0, height/2.0);
  scale(factor, -factor);
  
  strokeWeight(1.5/factor);
  
  beginShape();
  for (float a=-PI; a<PI; a+=1.0/factor) {
    vertex(a, sin(a));
  }
  endShape();
 
  save("functions.png");
}
