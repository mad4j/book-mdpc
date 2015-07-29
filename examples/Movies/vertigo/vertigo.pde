
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Vertigo

final color PAPER = color(228, 20, 20);
final color INK = color(242, 243, 244);

int spiralSizeMin=50;
float arStart=1.3, arEnd=2.0;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(2.0);
  
  for (int i=0; i<250; i++) {
    
    float a = TWO_PI / (0.03*i+1);
    float r = 50.0 * (9.0/(0.015*i+1) + 1);
    float s = 2.0 - 70.0 / (3*i+100);
    
    pushMatrix();
      rotate(a);
      ellipse(0, 0, r/s, r);
    popMatrix();
  }
  
  save("vertigo.png");
}


