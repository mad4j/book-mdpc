// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Black Rain (1989)


final color PAPER = color(240);
final color INK = color(30);

final int ROWS = 80;


void setup() {
  size(480, 640);  
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
    
  translate(0.5*width, 0.5*height);
  rotate(-0.1);
  scale(S);

  randomSeed(0);

  background(PAPER);

  stroke(INK);
  strokeWeight(1.5*U);
  
  for (float w=-1.0; w<1.0; w+=(2.0/ROWS)) {
    float a, b = -0.8;
    while (b < 0.8) {
      a = b + random(0.05);
      b = a + random(0.05);
      line(w, a, w, b);
    }
  }

  save("black-rain.png");
}
