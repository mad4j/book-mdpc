---
permalink: /examples/volume6/robocop_2014/
title: RoboCop (2014) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# RoboCop (2014)

Action, Crime, Sci-Fi

## Plot
In 2028 Detroit, when Alex Murphy, a loving husband, father and good cop, is critically injured in the line of duty, the multinational conglomerate OmniCorp sees their chance for a part-man, part-robot police officer.

[details](https://www.imdb.com/title/tt1234721/)

## Movie Poster
<img src="robocop-2014.png"  width="360px" title="RoboCop">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2023

// RoboCop (2014)


final color PAPER = color(10, 10, 20);
final color INK = color(215, 0, 100);

final float RADIUS = 0.6;

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeWeight(25*U);
  
  rectMode(CORNERS);
  rect(-RADIUS, 0.0,  RADIUS, -1.0, 0.3);
  
  save("robocop-2014.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
