---
permalink: /examples/volume6/robocop/
title: RoboCop (1987) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# RoboCop (1987)

Action, Crime, Sci-Fi, Thriller

## Plot
In a dystopic and crime-ridden Detroit, a terminally wounded cop returns to the force as a powerful cyborg haunted by submerged memories.

[details](https://www.imdb.com/title/tt0093870/)

## Movie Poster
<img src="robocop.png"  width="360px" title="RoboCop">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// RoboCop (1987)


final color PAPER = color(165, 170, 175);
final color INK = color(20);

final float RADIUS = 0.3;

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
  
  stroke(INK);
  
  strokeWeight(50*U);
  line(-RADIUS, 0.0, RADIUS, 0.0);
  
  strokeWeight(2*U);
  line(-1.5*RADIUS, 0.0, 1.5*RADIUS, 0.0);
  
  save("robocop.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
