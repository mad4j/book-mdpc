// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Pulp Fiction


final color PAPER = color(80, 80, 80);
final color INK = color(220, 50, 50);


void setup() {
 
 size(480, 640);
 noLoop();
}


void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  for (int i=0; i<1000; i++) {
    
    float x = (width/5.0)*randomGaussian();
    float y = (height/5.0)*randomGaussian();
    float r = ((width-abs(x)-abs(y))/25.0)*randomGaussian();
    
    ellipse(x, y, r, r);
  }
  
  save("pulp-fiction.png");
}
