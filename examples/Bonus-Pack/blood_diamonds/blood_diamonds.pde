
void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(120);
  
  fill(255);
  noStroke();
  
  beginShape();
  vertex(-60, -20);
  vertex( 60, -20);
  vertex( 80,   0);
  vertex(  0, 120);
  vertex(-80,   0);
  endShape(CLOSE);
  
  fill(165, 10, 30);
  
  triangle(0, 130, 10, 150, -10, 150);
  ellipse(0, 150, 20, 20);
  
  save("blood-diamonds.png");
}