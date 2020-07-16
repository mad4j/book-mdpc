---
permalink: /examples/volume3/monsters_inc/
title: Monsters, Inc. (2001) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Monsters, Inc. (2001)

Animation, Adventure, Comedy

## Plot
In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.

[details](https://www.imdb.com/title/tt0198781/)

## Movie Poster
<img src="monsters-inc.png"  width="360px" title="Monsters, Inc.">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Monsters, Inc (2001)


final color PAPER = color(90, 200, 200);
final color INK1 = color(240);
final color INK2 = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = 0.2*min(width, height);
  
  translate(0.50*width, 0.33*height);
  scale(S);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK1);
  arc(0,  0.30, 3.6, 1.8, 1.1*PI, 1.9*PI, CHORD);
  arc(0, -0.27, 3.6, 1.8, 0.1*PI, 0.9*PI, CHORD);
  
  fill(INK2);
  ellipse(0.0, 0.0, 1.0, 1.0);
  
  save("monsters-inc.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
