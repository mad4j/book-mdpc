---
permalink: /examples/volume6/america_history_x/
title: American History X (1998) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# American History X (1998)

Drama

## Plot
A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.

[details](https://www.imdb.com/title/tt0120586/)

## Movie Poster
<img src="american-history-x.png"  width="360px" title="American History X">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// America History X (1998)


final color PAPER = color(240);
final color INK = color(35);

final float L = 0.2;
final float T = 50;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.75*width, 0.3*height);
  rotate(QUARTER_PI);
  scale(S);
  
  background(PAPER);
  
  strokeCap(PROJECT);
  strokeWeight(T*U);
  
  for (int i=0; i<4; i++) {
    line(0.0, 0.0, 0.0,   L);
    line(0.0,   L,  -L,   L);
    rotate(HALF_PI);
  }
  
  save("american-history-x.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
