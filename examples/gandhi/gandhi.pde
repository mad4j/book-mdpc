
final color PAPER = color(235, 225, 160);
final color INK1 = color(165, 75, 30);
final color INK2 = color(240);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s1 = 0.3 * min(width, height);
  float s2 = 0.05 * s1;
  
  float cx = 0.7*s1;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  fill(INK2);
  stroke(INK1);
  strokeWeight(s2);
  
  ellipse(-cx, 0, s1, s1);
  ellipse( cx, 0, s1, s1);
  
  noFill();
  arc(0, 0, 0.5*s1, 4.0*s2, -PI, 0, OPEN);
  line(-cx-2.0*s2-s1/2.0, 0, -cx-s1/2.0, 0);
  line( cx+2.0*s2+s1/2.0, 0,  cx+s1/2.0, 0);
  
  save("gandhi.png");
}