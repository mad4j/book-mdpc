

void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
  
  float yOffset = height/50.0;
  
  noStroke();
  
  for (int i=0; i<50; i++) {
    fill(25+i*4);
    rect(0, i*yOffset, width, yOffset+1);
  } 
  
  save("fifty-shades-of-grey.png");
}
