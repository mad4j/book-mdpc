---
permalink: /examples/volume6/squid_game/
title: Resident Evil (2002) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Resident Evil (2002)

Action, Horror, Sci-Fi

## Plot
A special military unit fights a powerful, out-of-control supercomputer and hundreds of scientists who have mutated into flesh-eating creatures after a laboratory accident.

[details](https://www.imdb.com/title/tt0120804/)

## Movie Poster
<img src="squid-game.png"  width="360px" title="Resident Evil">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Squid Game (2021)


final color PAPER = color(170, 145, 100);
final color INK = color(20);

final float R = 0.25;
final float D = 1.50;

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeWeight(80*R*U);
  
  rectMode(CENTER);
  
  translate(0.0, -D*R);
  ellipse (0.0, 0.0, R, R);
  
  translate(0.0, D*R);
  triangle(
    -0.5*R,  0.5*sqrt(3)*0.5*R, 
     0.5*R,  0.5*sqrt(3)*0.5*R, 
     0.0  , -0.5*R
  );
  
  translate(0.0, D*R);
  rect(0.0, 0.0, R, R);
  
  save("squid-game.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
