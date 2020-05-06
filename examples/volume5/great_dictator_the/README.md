---
permalink: /examples/volume5/great_dictator_the/
title: The Great Dictator (1940) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# The Great Dictator (1940)

Comedy, Drama, War

## Plot
Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel's regime.

[details](https://www.imdb.com/title/tt0032553/)

## Movie Poster
<img src="the-great-dictator.png"  width="360px" title="The Great Dictator">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 5
// Daniele Olmisani, 2020

// The Great Dictator (1940)


final color PAPER = color(0);
final color INK = color(255);

final float L = 0.17;
final float W = 0.15;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = min(width, height);
    
  translate((0.5-0.5*L)*width, (0.5-L)*height);
  scale(F);
  
  background(PAPER);
  
  stroke(INK);
  strokeCap(SQUARE);
  strokeWeight(W);
  
  for (int i=0; i<2; i++) {
    line(-L, -L,  L,  L);
    line( L, -L, -L,  L);
    translate(0.75*L, 2.5*L);
  }
    
  save("the-great-dictator.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
