---
permalink: /examples/volume1/predator/
---
# Predator (1987)

Azione, Fantascienza, Giallo

## Il film in breve
A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.

[dettagli](https://www.imdb.com/title/tt0093773/)

## La locandina
<img src="predator.png"  width="360px" title="Predator">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Predator

final color PAPER = color(65, 45, 35);
final color INK = color(175, 10, 10);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  rotate(-PI/2);  
  
  for (int i=0; i<3; i++) {
    rotate(TWO_PI / 3);
    ellipse(75, 0, 50, 50);
  }
  
  save("predator.png");
}
```
