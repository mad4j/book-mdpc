
void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, 0);
  
  background(55, 50, 0);
  
  strokeWeight(20);
  stroke(170, 165, 120);
  noFill();
  
  rectMode(CENTER);
  rect(-200,   0, 50, 50);
  rect(-150,  50, 50, 50);
  rect(-100, 100, 50, 50);
  rect( -50, 150, 50, 50);
  
  rect(   0, 200, 50, 50);
  
  rect( 50, 150, 50, 50);
  rect(100, 100, 50, 50);
  rect(150, 50, 50, 50);
  rect(200, 0, 50, 50);
  
  strokeCap(SQUARE);
  line(-25, 50, 25, 50);
  line(-60, 25, -10, 25);
  line( 60, 25, 10, 25);
}