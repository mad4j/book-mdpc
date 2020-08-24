---
permalink: /examples/volume4/birds_the/
title: The Birds (1963) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# The Birds (1963)

Drama, Horror, Mystery

## Plot
A wealthy San Francisco socialite pursues a potential boyfriend to a small Northern California town that slowly takes a turn for the bizarre when birds of all kinds suddenly begin to attack people.

[details](https://www.imdb.com/title/tt0056869/)

## Movie Poster
<img src="the-birds.png"  width="360px" title="The Birds">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// The birds (1963)


final color PAPER = color(255);
final color INK = color(30);

final int COUNT = 150;
final float DELTA = 0.8;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  randomSeed(100);
  
  float s = min(width, height) / 4.8;

  background(PAPER);
  noFill();
  stroke(INK);
  strokeWeight(0.05*s);
  
  for (int i=0; i<COUNT; i++) {
    resetMatrix();
    translate(random(width), random(height));
    scale(1 / (random(10)+1));
    rotate(-0.1*PI);
    arc(-0.4*s, 0, 0.8*s, s, -PI+DELTA, 0);
    arc( 0.4*s, 0, 0.8*s, s, -PI, -DELTA);
  }
  
  save("the-birds.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
