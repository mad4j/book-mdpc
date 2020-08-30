---
permalink: /examples/volume4/entrapment/
title: Entrapment (1999) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Entrapment (1999)

Action, Crime, Romance

## Plot
An insurance agent is sent by her employer to track down and help capture an art thief.

[details](https://www.imdb.com/title/tt0137494/)

## Movie Poster
<img src="entrapment.png"  width="360px" title="Entrapment">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Entrapment (1999)


final color PAPER = color(0);
final color INK = color(240, 30, 30);

final int COUNT = 6;


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  randomSeed(100);
  
  float s = 0.01 * min(width, height);
  float dH = (0.5 * height) / COUNT;
  
  translate(0, height/2.0);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(s);
  
  for (int i=0; i<COUNT; i++) {
    line(0, dH*randomGaussian(), width, dH*randomGaussian());
    translate(0, dH);
  }
  
  filter(BLUR);
  
  save("entrapment.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
