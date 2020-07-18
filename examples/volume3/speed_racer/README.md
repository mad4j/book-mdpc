---
permalink: /examples/volume3/speed_racer/
title: Speed Racer (2008) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Speed Racer (2008)

Action, Family, Sci-Fi

## Plot
A young driver, Speed Racer, aspires to be champion of the racing world with the help of his family and his high-tech Mach 5 automobile.

[details](https://www.imdb.com/title/tt0811080/)

## Movie Poster
<img src="speed-racer.png"  width="360px" title="Speed Racer">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Speed Racer (2008)


final color PAPER = color(230, 165, 25);
final color INK = color(225, 40, 45);

final int SQUARES = 16;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = max(width, height) /  (float)SQUARES;
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  for (int i=0; i<SQUARES; i++) {
    for (int j=0; j<SQUARES; j++) {
      if ((i+j)%2 == 0) {
        rect(i*S, j*S, S, S);
      }
    }
  }
  
  save("speed-racer.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
