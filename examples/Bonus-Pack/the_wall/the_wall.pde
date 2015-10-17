// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Wall

final color PAPER = color(255);
final color INK = color(32);

final int W = 80;
final int H = W/2;
final int R = W/10;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(INK);
  stroke(INK);
  fill(PAPER);
  
  for (int j=0; j<height/H; j++) {
    for (int i=0; i<width/W+1; i++) {
      rect(-(W/2)*(j%2)+i*W, j*H, W, H, R);
    }
  }
  
  save("the-wall.png");
}