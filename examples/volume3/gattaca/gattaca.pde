// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Gattaca (1997)


final color PAPER = color(110, 70, 75);
final color INK = color(240);

final String LETTERS = "GCTA";

PFont f;


void setup() { 
  size(480, 640);
  noLoop();
  
  f = loadFont("courier.vlw");
}


void draw() {
  
  final float S =  min(width, height);

  final float fonstSize = S/15;

  
  background(PAPER);
  fill(INK);
  
  textFont(f, fonstSize);  
  textAlign(CENTER, CENTER);
  
  for (int i=0; i<width/fonstSize; i++) {
    for (int j=0; j<height/fonstSize; j++) {
      text(
        LETTERS.charAt((int)random(LETTERS.length())), 
        fonstSize/2.0 + fonstSize*i, 
        fonstSize/2.0 + fonstSize*j);
    }
  }
  
  save("gattaca.png");
}
