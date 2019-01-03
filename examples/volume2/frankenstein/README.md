---
permalink: /examples/volume2/frankenstein/
---
# Frankenstein (1931)

Drammatico, Orrore, Fantascienza

## Il film in breve
An obsessed scientist assembles a living being from parts of exhumed corpses.

[details](https://www.imdb.com/title/tt0021884/)

## Movie Poster
<img src="frankenstein.png"  width="360px" title="Frankenstein">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Frankenstein



final color PAPER = color(255, 225, 190);
final color INK1 = color(255, 205, 150);
final color INK2 = color(35);

final int STEPS = 15;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(PAPER);
  
  fill(INK1);
  noStroke();
  
  quad(0, 0, width, 0, width, height/3.0, 0, height/2.0);
  
  float dx = width / STEPS;
  float dy = (height/3.0 - height/2.0) / STEPS;
  
  float s = 0.05 * min(width, height);
  float d = 0.4 * s;
  
  stroke(INK2);
  strokeWeight(s/5);
  
  for (int i=1; i<STEPS; i++) {
    float x = i*dx;
    float y = height/2.0 + i*dy;
    line(x+random(-d , d), y-s, x+random(-d, d), y+s);
  }
  
  save("frankenstein.png");
}
```

> MdPC - a collection of minimalist movie posters
