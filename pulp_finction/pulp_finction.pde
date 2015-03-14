
final color BLOOD_COLOR = color(220, 50, 50);
final color BACKG_COLOR = color(80, 80, 80);

void setup() {
 
 size(480, 640);
 noLoop();
}

void draw() {
  
  background(BACKG_COLOR);
  
  fill(BLOOD_COLOR);
  noStroke();
  
  ellipseMode(CENTER);
  
  translate(width/2.0, height/2.0);
  
  for (int i=0; i<1000; i++) {
    
    float x = (width/5.0)*randomGaussian();
    float y = (height/5.0)*randomGaussian();
    float r = ((width-abs(x)-abs(y))/25.0)*randomGaussian();
    
    //float r = (width-sqrt(x*x+y*y))*randomGaussian();
    ellipse(x, y, r, r);
  }
  
  save("pulp-finction.png");
}
