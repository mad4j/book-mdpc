---
permalink: /examples/volume6/equilibrium/
title: Equilibrium (2002) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Equilibrium (2002)

Action, Drama, Sci-Fi

## Plot
In an oppressive future where all forms of feeling are illegal, a man in charge of enforcing the law rises to overthrow the system and state.

[details](https://www.imdb.com/title/tt0238380/)

## Movie Poster
<img src="equilibrium.png"  width="360px" title="Equilibrium">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Equilibrium (2002)


final color PAPER = color(220, 0, 0);
final color INK1 = color(0);
final color INK2 = color(255);

final float RADIUS = 0.6;


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
  
  
  fill(INK2);
  stroke(INK1);
  strokeWeight(10*U);
  
  ellipse(0.0, 0.0, 0.7, 0.7);
  
  strokeCap(SQUARE);
  strokeWeight(30*U);
  
  for (int i=0; i<4; i++) {
    line(0.03, 0.0, 0.23, 0.0);
    line(0.23, -0.09, 0.23, 0.09);
    rotate(TWO_PI / 4);
  }

  save("equilibrium.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
