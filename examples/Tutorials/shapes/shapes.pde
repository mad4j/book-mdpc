
void setup() {
  size(512, 512);
  noLoop();
}

void draw() {
  for (int i=0; i<9; i++) {
    poly(50+(i%3)*110, 50+(i/3)*110, 50, i+3);
  }
}


void poly(float x, float y, float r, int n) {
  
  pushMatrix();
  translate(x, y);
  //rotate((n%2==0) ? -QUARTER_PI : -HALF_PI);
  rotate(-HALF_PI);
  
  beginShape();
    float da = TWO_PI / n;
    for (int i=0; i<n; i++) {
      vertex(r*cos(i*da), r*sin(i*da));
    }
  endShape(CLOSE);
  
  popMatrix();
}
