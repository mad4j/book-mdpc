---
permalink: /examples/volume3/sorpasso_il/
title: Il Sorpasso (1962) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Il Sorpasso (1962)

Comedy, Drama

## Plot
An impulsive braggart takes a shy law student for a two-day ride through the Roman and Tuscany countries.

[details](https://www.imdb.com/title/tt0056512/)

## Movie Poster
<img src="il-sorpasso.png"  width="360px" title="Il Sorpasso">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Il Sorpasso (1962)


final color PAPER = color(240);
final color INK1 = color(0, 105, 165);
final color INK2 = color(190, 0, 50);

final float STROKE = 20.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {

  final float S = min(width, height);
  final float U = 0.002;
  
  final float W = STROKE*U;
  
  scale(S);
  
  background(PAPER);
  
  strokeWeight(W);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  noFill();
  
  stroke(INK1);
  line(0.6, 0.8, 0.6, 0.5);
  line(0.6, 0.5, 0.6-W, 0.5+W);
  line(0.6, 0.5, 0.6+W, 0.5+W);
  
  stroke(INK2);
  beginShape();
    vertex(0.6, 1.1); vertex(0.6, 0.9);
    vertex(0.5, 0.8); vertex(0.5, 0.5);
    vertex(0.5, 0.5); vertex(0.6, 0.4);
    vertex(0.6, 0.2);
  endShape();
  line(0.6, 0.2, 0.6-W, 0.2+W);
  line(0.6, 0.2, 0.6+W, 0.2+W);
  
  save("il-sorpasso.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
