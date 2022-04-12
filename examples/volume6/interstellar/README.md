---
permalink: /examples/volume6/interstellar/
title: Interstellar (2014) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Interstellar (2014)

Adventure, Drama, Sci-Fi

## Plot
A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.

[details](https://www.imdb.com/title/tt0816692/)

## Movie Poster
<img src="interstellar.png"  width="360px" title="Interstellar">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// Interstellar (2014)


final color PAPER = color(20);
final color INK = color(240);

final int COUNT = 12;
final float DA = TWO_PI / COUNT;
final float L = 0.1;
final float R = 3*L;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(8*U);
  
  ellipse(0.0, 0.0, 2*R, 2*R);
  line(0.0, 0.0, R, 0.0);
  line(0.0, 0.5*L, 0.0, -0.5*L);
  
  noStroke();
  fill(INK);
  
  rectMode(CENTER);
  
  for (int i=0; i<COUNT; i++) {
    rect(R, 0.0, L, 0.6*L);
    rotate(DA);
  }
  
  rect(0.0,  0.5*L, L, 0.6*L);
  rect(0.0, -0.5*L, L, 0.6*L);
  
  save("interstellar.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
