---
permalink: /examples/volume3/monsters_inc/
---
# Monsters, Inc. (2001)

Animazione, Avventura, Commedia

## Il film in breve
In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.

[dettagli](https://www.imdb.com/title/tt0198781/)

## La locandina
<img src="monsters-inc.png"  width="360px" title="Monsters, Inc.">


## Il codice
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Monsters, Inc

final color PAPER = color(90, 200, 200);
final color INK1 = color(240);
final color INK2 = color(30);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float size = min(width, height) * 0.17;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK1);
  arc(0,  0.30*size, 3.6*size, 1.8*size, PI+PI/10.0, TWO_PI-PI/10.0, CHORD);
  arc(0, -0.27*size, 3.6*size, 1.8*size,    PI/10.0,     PI-PI/10.0, CHORD);
  
  fill(INK2);
  ellipse(0, 0, size, size);
  
  save("monsters-inc.png");
}
```
