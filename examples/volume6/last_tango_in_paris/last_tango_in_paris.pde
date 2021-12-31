// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Last Tango in Paris (1972)


final color PAPER = color(250, 240, 230);
final color INK1 = color(100);
final color INK2 = color(15, 140, 40);

final int COUNT = 10;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  stroke(INK1);
  fill(INK2);
  
  rectMode(CENTER); 
  strokeWeight(2*U);
  
  for (int i=0; i<COUNT; i++) {
    float d = i*0.2;
    line(-1  , -1+d,  1  , -1+d);
    line(-1+d, -1  , -1+d,  1  );
  }
  
  for (int i=0; i<COUNT; i++) {
    for (int j=0; j<COUNT; j++) {
      pushMatrix();
        translate(-1+i*0.2, -1+j*0.2);
        rotate(-QUARTER_PI);
        rect(0.0, 0.0, 0.05, 0.05);
      popMatrix();
    }
  }
  
  save("last-tango-in-paris.png");
}
