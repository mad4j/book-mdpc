

final color INK1 = color(0);
final color INK2 = color(255);

final int COUNT = 8;

void setup() {
  size(512, 512);
  noLoop();
}

void draw() {
  
  scale(width/COUNT, height/COUNT);
  
  noStroke();
  
  for (int i=0; i<COUNT; i++) {
    for (int j=0; j<COUNT; j++) {
      fill(((i+j)%2==0) ? INK1 : INK2);
      rect(i, j, 1, 1);
    }
  }
  
  save("checkerboard.png");
}
