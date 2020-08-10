// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Dr. No (1962)


final color PAPER = color(100, 0, 0);
final color INK = color(240);

final float R = 0.18;

final int RAYS = 9;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.4*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeWeight(7*U);
  
  float dA = TWO_PI / RAYS;
  

  for (int i=0; i<RAYS; i++) {
    
    rotate(dA);
    translate( R, 0.0);
    
    bezier( 0.0, 0.0,
            0.0, 0.1,
            0.0, 0.4,
           -0.8, 0.8);
            
    translate(-R, 0.0);

  }
  
  fill(INK);
  ellipse(0.0, 0.0, 2*R, 2*R);

  save("dr-no.png");
}
