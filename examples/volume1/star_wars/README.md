# Star Wars: Episode IV - A New Hope (1977)

Azione, Avventura, Fantascico

## Il film in breve
Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a wookiee and two droids to save the galaxy from the Empire's world-destroying battle-station, while also attempting to rescue Princess Leia from the evil Darth Vader.

[dettagli](https://www.imdb.com/title/tt0076759/)

## La locandina
<img src="star-wars.png"  width="360px" title="Star Wars: Episode IV - A New Hope">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Star Wars

final color PAPER = color(34, 34, 34);
final color INK = color(132, 132, 130);

final float MOON = 300.0;
final float HOLE = 70.0;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  noStroke();
  
  fill(INK);
  ellipse(0, 0, MOON, MOON);
  
  fill(PAPER);
  rect(0, 0, MOON, MOON/60.0);
  ellipse(HOLE, -HOLE, HOLE, HOLE);
  
  save("star-wars.png");
}

```
