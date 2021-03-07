---
permalink: /examples/volume6/watchmen/
title: Watchmen (2009) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Watchmen (2009)

Action, Drama, Mystery, Sci-Fi

## Plot
In 1985 where former superheroes exist, the murder of a colleague sends active vigilante Rorschach into his own sprawling investigation, uncovering something that could completely change the course of history as we know it.

[details](https://www.imdb.com/title/tt0409459/)

## Movie Poster
<img src=""  width="360px" title="Watchmen">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// Watchmen (2009)


final color PAPER = color(35, 100, 165);
final color INK = color(10, 35, 90);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S, -S);
  
  background(PAPER);

  
  stroke(INK);
  strokeWeight(6*U);
  
  noFill();
  ellipse(0.0, 0.0, 0.6, 0.6);
  
  fill(INK);
  ellipse(0.0, 0.0, 0.2, 0.2);
  ellipse(0.0, 0.3, 0.1, 0.1);
  
  save("watchmen.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
