---
permalink: /examples/volume3/from_dusk_till_dawn/
title: From Dusk Till Dawn (1996) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# From Dusk Till Dawn (1996)

Action, Crime, Horror

## Plot
Two criminals and their hostages unknowingly seek temporary refuge in an establishment populated by vampires, with chaotic results.

[details](https://www.imdb.com/title/tt0116367/)

## Movie Poster
<img src="from-dusk-till-dawn.png"  width="360px" title="From Dusk Till Dawn">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// From Dusk till Dawn (1996)


final color PAPER = color(95, 80, 150);
final color INK1 = color(225, 0, 50);
final color INK2 = color(245, 225, 0);

final float SIZE = 0.4;
final float DELTA = 0.004;

final int RAYS = 7;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
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

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
