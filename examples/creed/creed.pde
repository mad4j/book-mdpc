
final color PAPER = color(20, 35, 85);

final color INK1 = color(225, 0, 20);
final color INK2 = color(235);

final int STRIPES = 5;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  noStroke();
  
  float deltaX = width/STRIPES;
  float deltaY = height/4.0;
  
  for (int i=0; i<STRIPES; i++) {
    star((0.5+i)*deltaX, deltaY/2.0, 0.6);
  }
    
  translate(0, deltaY);
  
  fill(INK2);
  for (int i=0; i<STRIPES; i++) {
    fill(i%2==0 ? INK1 : INK2);
    rect(i*deltaX, 0, deltaX, 3*deltaY);
  }
  
  save("creed.png");
}

void star(float x, float y, float size) {
  
  pushMatrix();
    translate(x, y);
    scale(size, size);
    beginShape();
      vertex(0, -50);
      vertex(29, 40);
      vertex(-47, -15);
      vertex(47, -15);
      vertex(-29, 40);
    endShape(CLOSE);
  popMatrix();
}