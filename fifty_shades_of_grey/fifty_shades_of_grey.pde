// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Fifty Shades of Grey

final int ROWS = 10;
final int COLS = 5;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  scale(width/COLS, height/ROWS);

  float dc = 256/50.0;
  
  noStroke();
  
  int index = 50;
  for (int j=0; j<ROWS; j++) {
    for (int i=0; i<COLS; i++) {
      fill(index*dc);
      rect(i, j, 1, 1);
      index--;
    }
  }
  
  save("fifty-shades-of-grey.png"); 
}
