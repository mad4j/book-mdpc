
float f(float x) {
  return 3*sqrt(-sq((x/7))+1);
}

float g(float x) {
  return 1.5-0.5*abs(x)-((6*sqrt(10))/14)*(sqrt(3-sq(x)+2*abs(x))-2);
}

float h(float x) {
  return abs(x/2)-0.0913722*sq(x)-3+sqrt(1-sq((abs(abs(x)-2)-1)));
}

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  scale(25.0, -25.0);

  background(34, 34, 34);
  noStroke();

  fill(243, 145, 0);
  //ellipse(-8, -2, 16, 4);
  
  beginShape();
  for (float x=1.0; x<3.0; x+=0.04) {
    vertex(x, g(x));
  }
  for (float x=3.0; x<=7.0; x+=0.04) {
    vertex(x, f(x));
  }
  for (float x=7.0; x>=4.0; x-=0.04) {
    vertex(x, -f(x));
  }
  for (float x=4.0; x>=-4.0; x-=0.04) {
    vertex(x, h(x));
  }
  for (float x=4.0; x<=7.0; x+=0.04) {
    vertex(-x, -f(x));
  }
  for (float x=7.0; x>=3.0; x-=0.04) {
    vertex(-x, f(x));
  }
  for (float x=-3.0; x<-1.0; x+=0.04) {
    vertex(x, g(x));
  }
  
  vertex(-0.75, 3.00);
  vertex(-0.50, 2.25);
  vertex( 0.50, 2.25);
  vertex( 0.75, 3.00);
  vertex( 1.00, 1.00);
  endShape();
  
  save("batman.png");
}
