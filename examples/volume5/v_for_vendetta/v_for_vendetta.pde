// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// V for Vendetta (2005)


final color PAPER = color(0);
final color INK = color(150, 0, 20);


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

  stroke(INK);
  strokeWeight(100*U);
  
  line(-0.6, -0.8, 0.0, 0.7);
  line( 0.6, -0.8, 0.0, 0.7);
  
  save("v-for-vendetta.png");
}