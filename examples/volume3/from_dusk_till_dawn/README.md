# from_dusk_till_dawn (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="from-dusk-till-dawn.png"  width="360px" title="from_dusk_till_dawn">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// From Dusk till Dawn

final color PAPER = color(95, 80, 150);
final color INK1 = color(225, 0, 50);
final color INK2 = color(245, 225, 0);

final int SIZE = 200;

final int RAYS = 7;
final int DELTA = 2;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK1);
  arc(0, -DELTA, SIZE, SIZE, -PI, 0, OPEN);
  
  fill(INK2);
  arc(0, +DELTA, SIZE, SIZE, 0, +PI, OPEN);
  
  stroke(INK2);
  strokeWeight(SIZE / 20);
  
  for (int i=0; i<RAYS; i++) {
    line(0.6*SIZE, 0, 0.6*SIZE+0.25*SIZE, 0);
    rotate(PI / (RAYS-1));
  }
  
  save("from-dusk-till-dawn.png");
}
```
