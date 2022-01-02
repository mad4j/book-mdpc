---
permalink: /examples/volume6/last_tango_in_paris/
title: Last Tango in Paris (1972) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Last Tango in Paris (1972)

Drama, Romance

## Plot
A young Parisian woman meets a middle-aged American businessman who demands their clandestine relationship be based only on sex.

[details](https://www.imdb.com/title/tt0070849/)

## Movie Poster
<img src="last-tango-in-paris.png"  width="360px" title="Last Tango in Paris">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Last Tango in Paris (1972)


final color PAPER = color(250, 240, 230);
final color INK1 = color(100);
final color INK2 = color(15, 140, 40);

final int COUNT = 10;
final float SIZE = 0.2;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  stroke(INK1);
  fill(INK2);
  
  rectMode(CENTER); 
  strokeWeight(2*U);
  
  for (int i=0; i<COUNT; i++) {
    float d = i*SIZE;
    line(-1  , -1+d,  1  , -1+d);
    line(-1+d, -1  , -1+d,  1  );
  }
  
  for (int i=0; i<COUNT; i++) {
    for (int j=0; j<COUNT; j++) {
      pushMatrix();
        translate(-1+i*SIZE, -1+j*SIZE);
        rotate(-QUARTER_PI);
        rect(0.0, 0.0, 0.25*SIZE, 0.25*SIZE);
      popMatrix();
    }
  }
  
  save("last-tango-in-paris.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
