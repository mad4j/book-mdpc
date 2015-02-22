
void drawDoor(float x, float y, int type) {
  
  float value = random(360);
  
  noStroke();
  ellipseMode(CENTER);
  
  fill(value, 80, 80);
  rect(x, y, 100, 140);
  
  stroke(0);
  strokeWeight(2.0);
  if (type == 0) {
    rect(x+10, y+10, 80, 20);
    rect(x+10, y+40, 80, 60);
    rect(x+10, y+110, 80, 20);
  } else if (type == 1) {
    rect(x+10, y+10, 35, 70);
    rect(x+55, y+10, 35, 70);
    rect(x+10, y+90, 35, 40);
    rect(x+55, y+90, 35, 40);
  } else if (type == 2) {
    rect(x+10, y+10, 80, 120);
  } else if (type == 3) {
    rect(x+10, y+10, 80, 55);
    rect(x+10, y+75, 80, 55);
  }
}

void setup() {
  
  size(480, 640);
  noLoop();
  
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  
  background(100, 0, 80);
  
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      drawDoor(20+i*115, 20+j*155, (i+j*4)%4);
    }
  }
}
