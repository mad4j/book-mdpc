
final color PAPER = color(0);
final color INK = color(250, 180, 50);

final float D = TWO_PI / 5;
final float R = 0.4;


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;  
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeWeight(20*U);
  
  beginShape();
  for (int i=0; i<5; i++) {
    
    float a = 0.25*D+2*i*D;
    vertex(R*cos(a), R*sin(a));
  }
  endShape(CLOSE);
  
  save("ninth-gate.png");
}