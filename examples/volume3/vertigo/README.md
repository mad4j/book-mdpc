---
permalink: /examples/volume3/vertigo/
title: Vertigo (1958) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Vertigo (1958)

Mystery, Romance, Thriller

## Plot
A San Francisco detective suffering from acrophobia investigates the strange activities of an old friend's wife, all the while becoming dangerously obsessed with her.

[details](https://www.imdb.com/title/tt0052357/)

## Movie Poster
<img src="vertigo.png"  width="360px" title="Vertigo">


## The code
```java

// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Vertigo (1958)


final color PAPER = color(230, 20, 20);
final color INK = color(240);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(2.0*U);
  
  for (int i=0; i<250; i++) {
    
    float a = TWO_PI / (1.0+i*0.03);
    float r = 0.1 * (9.0/(0.015*i+1.0) + 1.0);
    float s = 2.0 - 70.0 / (3.0*i+100.0);
    
    pushMatrix();
      rotate(a);
      ellipse(0, 0, r/s, r);
    popMatrix();
  }
  
  save("vertigo.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
