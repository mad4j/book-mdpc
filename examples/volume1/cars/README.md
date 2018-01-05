---
permalink: /examples/volume1/cars/
---
# Cars (2006)

Animazione, Avventura, Commedia

## Il film in breve
A hot-shot race-car named Lightning McQueen gets waylaid in Radiator Springs, where he finds the true meaning of friendship and family.

[dettagli](https://www.imdb.com/title/tt0317219/)

## La locandina
<img src="cars.png"  width="360px" title="Cars">


## Il codice
```java
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Cars (2006)


final color PAPER = color(205, 40, 10);
final color INK = color(255);

final float L = 0.8;
final float D = 0.1*L;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(F);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  arc(0.00  , 0.00, 1.00*L, 0.40*L, PI, TWO_PI-(0.5*QUARTER_PI), CHORD);
  arc(0.20*L, 0.00, 0.55*L, 0.65*L, PI+(0.5*QUARTER_PI), TWO_PI-(0.3*QUARTER_PI), CHORD);
  
  fill(PAPER);
  
  ellipse(-1.3*D, -1.0*D, D, D);
  ellipse( 1.3*D, -1.3*D, D, D);
  
  save("cars.png");
}
```
