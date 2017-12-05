
final color PAPER = color(0);
final color INK = color(250, 180, 50);

final int SPIKES = 5;
final float D = TWO_PI / SPIKES;
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
  
  for (int i=0; i<SPIKES; i++) {
    
    fill(PAPER);
    noStroke();
    quad(-0.3, +0.02, +0.3, +0.02, +0.2, -0.02, -0.2, -0.02);
    
    stroke(INK);
    strokeWeight(5*U);
    line(-0.315, +0.02, +0.315, +0.02);
    line(-0.2, -0.018, +0.2, -0.018);
    
    translate(-0.05, -0.15);
    rotate(2*D);
  }
  
  fill(PAPER);
  noStroke();
  quad(-0.3, +0.02, +0.0, +0.02, +0.0, -0.02, -0.2, -0.02);
  
  stroke(INK);
  strokeWeight(5*U);
  line(-0.315, +0.02, +0.0, +0.02);
  line(-0.2, -0.018, +0.0, -0.018);
  
  save("ninth-gate.png");
}