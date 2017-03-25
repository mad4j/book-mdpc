# tron (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="tron.png"  width="360px" title="tron">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Tron

final color PAPER = color(30);
final color[] INKS = {
  color(0, 135, 85),
  color(255, 50, 50),
  color(55, 205, 250),
};

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  noFill();
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  stroke(INKS[0]);
  for (int i=0; i<max(width, height); i+=80) {
    line(i, 0, i, height);
    line(0, i, width, i);
  } 
  
  strokeWeight(10.0);
  for (int i=1; i<INKS.length; i++) {
    stroke(INKS[i]);
    beginShape();
      vertex(2*96, 4*128); vertex(2*96, 2*128);
      vertex(3*96, 2*128); vertex(3*96, 128);
    endShape();
    translate(20, 20);
  }
  
  save("tron.png");
}
```
