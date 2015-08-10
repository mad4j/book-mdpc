
final color PAPER = color(100, 145, 140);
final color INK1 = color(130, 90, 50);
final color INK2 = color(90, 65, 25);
final color INK3 = color(30, 30, 30);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  drawButton(-100, 0, 100);
  drawButton( 100, 0, 100);
  
  save("coraline.png");
}

void drawButton(float x, float y, float s) {
  
  pushMatrix();
  translate(x, y);

  float l0 = 0.07*s;
  float l1 = 0.11*s;
  float l2 = 0.16*s;
  
  fill(INK1);
  stroke(INK2);
  
  strokeWeight(l0);
  
  ellipseMode(CENTER);
  ellipse(0, 0, s, s);
  
  fill(INK3);
  noStroke();
  
  rotate(-PI/3.0);
  
  
  ellipse(-l1, -l1, l2, l2);
  ellipse( l1, -l1, l2, l2);
  ellipse( l1,  l1, l2, l2);
  ellipse(-l1,  l1, l2, l2);
   
  popMatrix();
}