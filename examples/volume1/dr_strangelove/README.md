---
permalink: /examples/volume1/dr_strangelove/
title: Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb (1964) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb (1964)

Comedy

## Plot
An insane general triggers a path to nuclear holocaust that a war room full of politicians and generals frantically try to stop.

[details](https://www.imdb.com/title/tt0057012/)

## Movie Poster
<img src="dr-strangelove.png"  width="360px" title="Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Dr. Strangelove (1964)


final color PAPER = color(240);
final color INK = color(25, 25, 110);

final float S = 0.10;

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(F);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  rectMode(CENTER);
  
  rect(0, 0, 2*S, 5*S, 3*S);
  
  translate(0, -1.5*S);
  quad(-S, 0, S, 0, 0.5*S, -2*S, -0.5*S, -2*S);
  
  translate(0, -1.5*S);
  quad(0, 0, 0, -S,  S, -1.5*S,  S, -0.5*S);
  quad(0, 0, 0, -S, -S, -1.5*S, -S, -0.5*S);
  
  save("dr-strangelove.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
