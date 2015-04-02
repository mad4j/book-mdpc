
void setup() {
  
  size(480, 640);
  noLoop(); 
}

void draw() {
  
  background(190, 0, 50);
  
  translate(width/2.0, height/2.0);
  
  ellipseMode(CENTER);
  
  stroke(161, 202, 241);
  strokeWeight(5.0);
  noFill();
  
  for (int i=0; i<10; i++) {
    float r = 55+45*i;
    ellipse(0, 0, r, r);
  }
  
  
}
