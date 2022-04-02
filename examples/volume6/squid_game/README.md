---
permalink: /examples/volume6/squid_game/
title: Squid Game (2021–) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Squid Game (2021–)

Action, Drama, Mystery

## Plot
Hundreds of cash-strapped players accept a strange invitation to compete in children's games. Inside, a tempting prize awaits with deadly high stakes. A survival game that has a whopping 45.6 billion-won prize at stake.

[details](https://www.imdb.com/title/tt10919420/)

## Movie Poster
<img src="squid-game.png"  width="360px" title="Squid Game">


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
