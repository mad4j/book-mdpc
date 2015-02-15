

void setup() {
  
  size(500, 500);
  noLoop();
}


void draw() {
 
  noStroke();
  
  for (int i=0; i<50; i++) {
    fill(25+i*4);
    rect(0, 10*i, 500, 10);
  } 
  
  save("fifty-shades-of-grey.png");
  
}
