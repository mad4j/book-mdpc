// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// The Ninth Gate (1999)


final color PAPER = color(0);
final color INK = color(250, 180, 50);

final float A = TWO_PI / 5;
final float R = 0.3;
final float L = 0.025;
final float D =(2*L) / tan(0.25*A);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  println(L*cos(R));
  
  final float S =  min(width, height);
  final float U = 0.002;  
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  for (int i=0; i<11; i++) {
  
    noStroke();
    fill(PAPER);
    quad(-R, -L, 0.0, -L, 0.0, L, -(D+R), L);
    
    stroke(INK);
    strokeWeight(5*U);
    line(-R, -L, 0.0, -L);
    line(-(D+R), L, +0.0, L);
    
    scale(-1, 1);
    
    if (i%2 != 0) {
      translate(-0.5*D, 2*L-2.5*U-(D+R)*sin(2*A));
      rotate(2*A);
    }
  } 

  save("the-ninth-gate.png");
}