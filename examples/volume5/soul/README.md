---
permalink: /examples/volume5/soul/
title: Soul (2020) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Soul (2020)

Animation, Adventure, Comedy, Family, Fantasy, Music

## Plot
A musician who has lost his passion for music is transported out of his body and must find his way back with the help of an infant soul learning about herself.

[details](https://www.imdb.com/title/tt2948372/)

## Movie Poster
<img src="soul.png"  width="360px" title="Soul">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Soul (2020)


final color PAPER = color(60, 105, 170);
final color INK = color(90, 150, 185);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.5*height);
  scale(S);
  rotate(PI / 6);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  ellipse(0.0, 0.0, 0.2, 0.2);
  
  for (int i=0; i<6; i++) {
    ellipse(0.25, 0.0, 0.2, 0.2);
    rotate(PI / 3);
  }
  
  save("soul.png");
}  

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
