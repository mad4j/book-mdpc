
final color PAPER = color(245, 180, 50);
final color INK1 = color(100, 60, 20);
final color INK2 = color(200);


final float W = 100;
final float H = 60;
 
void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, 2*height/3.0);
  
  background(PAPER);
  stroke(INK1);
  fill(INK2);
  
  strokeWeight(10.0);
  strokeJoin(ROUND);
  
  quad(-W, -H, W, -H, 1.1*W, H, -1.1*W, H);
}