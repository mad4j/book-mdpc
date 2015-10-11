
final color PAPER = color(250, 0, 0);
final color INK1 = color(255, 255, 255);
final color INK2 = color(15, 0, 100);

final int S = 8;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  stroke(INK1);
  strokeWeight(120.0);
  line(0, 0, width, height);
  line(width, 0, 0, height);
  
  stroke(INK2);
  strokeWeight(100.0);
  line(0, 0, width, height);
  line(width, 0, 0, height);
  
  fill(INK1);
  noStroke();
  for (int i=1; i<S; i++) {
    star(i*width/S, i*height/S, 0.5);
    star((S-i)*width/S, i*height/S, 0.5);
  }
  
  save("hazzard.png");
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