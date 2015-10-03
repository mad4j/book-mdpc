
final color PAPER = color(110, 70, 75);
final color INK = color(240);

final String LETTERS = "GCTA";
final int FONT_SIZE = 32;

PFont f;

void setup() {
 
  size(480, 640);
  noLoop();
  
  f = loadFont("courier.vlw");
}

void draw() {
  
  background(PAPER);
  fill(INK);
  
  textFont(f, FONT_SIZE);  
  textAlign(CENTER, CENTER);
  
  for (int i=0; i<width/FONT_SIZE; i++) {
    for (int j=0; j<height/FONT_SIZE; j++) {
      text(
        LETTERS.charAt((int)random(LETTERS.length())), 
        FONT_SIZE/2.0 + FONT_SIZE*i, 
        FONT_SIZE/2.0 + FONT_SIZE*j);
    }
  }
  
  save("gattaca.png");
}