
final color PAPER = color(60);
final color INK = color(230);

final float SIZE = 5.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  fill(INK);
  stroke(INK);
  
  strokeWeight(SIZE);
  
  float w1 = width/3.0;
  float w2 = width/6.0;
  
  float h1 = height/5.0;
  float h2 = height/8.0;
  
  line(-w2, 0,  w2, 0);
  
  line(-w2, 0, -w1, -h2);
  line(-w2, 0, -w1,  h2);
  line( w2, 0,  w1, -h2);
  line( w2, 0,  w1,  h2);
  
  line(-w2, -h1, -w2,  h1);
  line( w2, -h1,  w2,  h1);
  
  points(w2,  0, 4*SIZE);
  points(w2, h1, 4*SIZE); 
  points(w1, h2, 4*SIZE);
  
  save("good-will-hunting.png");
}

void points(float x, float y, float s) {
  ellipse( x,  y, s, s);
  ellipse( x, -y, s, s);
  ellipse(-x,  y, s, s);
  ellipse(-x, -y, s, s);
}