---
permalink: /examples/volume4/ninth_gate_the/
title: The Ninth Gate (1999) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# The Ninth Gate (1999)

Mystery, Thriller

## Plot
A rare book dealer, while seeking out the last two copies of a demon text, gets drawn into a conspiracy with supernatural overtones.

[details](https://www.imdb.com/title/tt0142688/)

## Movie Poster
<img src="the-ninth-gate.png"  width="360px" title="The Ninth Gate">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2017

// The Ninth Gate (1999)


final color PAPER = color(0);
final color INK = color(250, 180, 50);

final float A = TWO_PI / 5;
final float T = 0.05;
final float L1 = 0.4;
final float L2 = L1 - (T / tan(0.25*A));


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  final float D = 100*T*U;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  for (int i=0; i<11; i++) {
  
    noStroke();
    fill(PAPER);
    quad(L2, 0, 0, 0, 0, T, L1, T);
    
    stroke(INK);
    strokeWeight(D);
    line(L2, 0, 0, 0);
    line(L1, T, 0, T);
    
    scale(-1, 1);
    
    if (i%2 != 0) {
      translate(L2+0.5*D, 0);
      rotate(-2*A);
      translate(L2+0.5*D, 0);
    }
  } 

  save("the-ninth-gate.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
