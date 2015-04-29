

void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
  
  float dx = width/5.0;
  float dy = height/10.0;
  float dc = 256/50.0;
  
  noStroke();
  
  int index = 50;
  for (int j=0; j<10; j++) {
    for (int i=0; i<5; i++) {
      fill(index*dc);
      rect(i*dx, j*dy, dx, dy);
      index--;
    }
  } 
  
  save("fifty-shades-of-grey.png");
}
