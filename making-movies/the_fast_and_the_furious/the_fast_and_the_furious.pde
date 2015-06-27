
final color PAPER = color(32);
final color INK = color(242);

final int SIZE = 200;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float s1 = SIZE/40.0;
  float s2 = SIZE/4.0;
  float s3 = SIZE/8.8;
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeWeight(s1);
  
  ellipse(0, 0, SIZE, SIZE);
  
  line(-s2,  0,  s2,   0);
  line(  0, s3,   0, -s3);
  line(-s2, s3, -s2, -s3);
  line( s2, s3,  s2, -s3);
  
  save("the-fast-and-the-furious.png");
}
