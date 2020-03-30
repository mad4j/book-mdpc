---
permalink: /examples/volume3/jaws/
title: Jaws (1975) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Jaws (1975)

Adventure, Drama, Thriller

## Plot
A giant great white shark arrives on the shores of a New England beach resort and wreaks havoc with bloody attacks on swimmers, until a part-time sheriff teams up with a marine biologist and an old seafarer to hunt the monster down.

[details](https://www.imdb.com/title/tt0073195/)

## Movie Poster
<img src="jaws.png"  width="360px" title="Jaws">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Jaws

final color PAPER = color(0, 105, 165);
final color INK = color(195, 180, 130);

final float TEETH = 10;;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  fill(INK);
  noStroke();

  scale(width/TEETH, height/TEETH);
  drawTeeth();
  
  resetMatrix();
  translate(0, height);
  scale(width/TEETH, -height/TEETH);
  drawTeeth();

  save("jaws.png");
}

void drawTeeth() {
  rect(0, 0, width/TEETH, 1);
  for(int i=0; i<TEETH; i++) {
     triangle(i, 1, i+1, 1, i+0.5, 2);
  }
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
