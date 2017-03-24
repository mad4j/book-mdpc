# zorro (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="one-hundred-and-one-dalmatians.png"  width="360px" title="zorro">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// One hundred and one Dalmatians


final color PAPER = color(250);
final color INK = color(35);

final int SPOTS = 7;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.313 * min(width, height);
  
  background(PAPER);
  
  randomSeed(10);
  for (int i=0; i<SPOTS; i++) {
    drawSpot(random(width), random(height), random(s), (int)(0.135*s));
  }
  
  save("one-hundred-and-one-dalmatians.png");
}


void drawSpot(float x, float y, float r, int fuzz) {
  
  fill(INK);
  noStroke();
  
  pushMatrix();

  translate(x, y);
  
  ellipse(0, 0, r, r);
  
  for (int i=0; i<fuzz; i++) {
    ellipse(random(0.2*r), random(0.2*r), r, r);
  }
  
  popMatrix();
}
```
