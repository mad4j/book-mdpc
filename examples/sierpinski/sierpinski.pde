
final float SCALE = 8.0;

void setup() {
  size(512, 512);
  noLoop();
}

void draw() {
  
  scale(SCALE);
  
  background(192);
  
  for (int i=0; i<width/SCALE; i++) {
    for (int j=0; j<height/SCALE; j++) {
      stroke(((i&j) > 0) ? 0 : 255);
      point(i, j);
    }
  }
}
