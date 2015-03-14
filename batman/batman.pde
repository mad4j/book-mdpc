

final float SCALE_FACTOR = 25.0;

float f(float x) {
  return 3*sqrt(-sq((x/7))+1);
}

float g(float x) {
  return 1.5-0.5*abs(x)-((6*sqrt(10))/14)*(sqrt(3-sq(x)+2*abs(x))-2);
}

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(0);
  stroke(255);

  translate(width/2.0, height/2.0);
  scale(SCALE_FACTOR, -SCALE_FACTOR);
  
  strokeWeight(1/SCALE_FACTOR);
  
  
  for (float x=3.0; x<=7; x+=1/(1000*SCALE_FACTOR)) {
    
    float y = f(x);
    point(x, y);
    point(-x, y);
  }
  
  for (float x=4.0; x<=7; x+=1/(10000*SCALE_FACTOR)) {
    
    float y = -f(x);
    point(x, y);
    point(-x, y);
  }
  
  for (float x=1; x<3; x+=1/SCALE_FACTOR) {
    
    float y = g(x);
    point(x, y);
    point(-x, y);
  }
  
  line(-1, 1, -0.75, 3);
  line(1, 1, 0.75, 3);
  line(-0.75, 3, -0.5, 2.25);
  line(0.75, 3, 0.5, 2.25);
  line(-0.5, 2.25, 0.5, 2.25);
  
}
