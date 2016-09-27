
final color PAPER = color(230, 165, 25);
final color INK = color(225, 40, 45);

final int SIZE = 40;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  for (int i=0; i<width/SIZE; i++) {
    for (int j=0; j<height/SIZE; j++) {
      if ((i+j)%2 == 0) {
        rect(i*SIZE, j*SIZE, SIZE, SIZE);
      }
    }
  }
  
  save("speed-racer.png");
}