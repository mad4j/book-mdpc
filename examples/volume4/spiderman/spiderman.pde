// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Spider-man (2002)


final color PAPER = color(135, 0, 0);
final color INK1 = color(0);
final color INK2 = color(240);

final int LINES = 5;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.01 * min(width, height);
  
  translate(0.5*width, 0.5*height);
  
  background(PAPER);
  stroke(INK1);
  fill(INK2);
  
  strokeWeight(0.5*s);
    
  for (int i=0; i<LINES; i++) {
    rotate(PI/(LINES+1));
    line(-width, 0, +width, 0);
  }
  
  strokeWeight(s);
  
  resetMatrix();
  translate(width/2.0, height/2.0);
  
  triangle( 5*s, 0,  width, -height/3,  width, 20*s);
  triangle(-5*s, 0, -width, -height/3, -width, 20*s);
  
  save("spider-man.png");
}
