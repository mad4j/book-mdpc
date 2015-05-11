
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Fifty Shades of Grey

void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
  
  scale(width/5.0, height/10.0);

  float dc = 256/50.0;
  
  noStroke();
  
  int index = 50;
  for (int j=0; j<10; j++) {
    for (int i=0; i<5; i++) {
      fill(index*dc);
      rect(i, j, 1, 1);
      index--;
    }
  }
  
  save("fifty-shades-of-grey.png"); 
}
