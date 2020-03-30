---
permalink: /examples/volume2/charlie_s_angels/
title: Charlie's Angels (2000) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Charlie's Angels (2000)

Action, Adventure, Comedy

## Plot
Three women, detectives with a mysterious boss, retrieve stolen voice-ID software, using martial arts, tech skills, and sex appeal.

[details](https://www.imdb.com/title/tt0160127/)

## Movie Poster
<img src="charlie-s-angels.png"  width="360px" title="Charlie's Angels">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Charlie's Angels (2000)

final color PAPER = color(245, 180, 50);
final color INK1 = color(100, 60, 20);
final color INK2 = color(200);


final int ROWS = 10;
final int COLS = 20;

 
void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float W = 0.25 * min(width, height);
  final float H = 0.60 * W;
  
  translate(0.5*width, 0.6*height);
  
  background(PAPER);
  stroke(INK1);
  fill(INK2);
  
  strokeWeight(W/12);
  strokeJoin(ROUND);
  
  quad(-W, -H, W, -H, 1.1*W, H, -1.1*W, H);
  
  fill(INK1);
  noStroke();
  
  final float D = 2*(W/COLS);
  final float R = H/15; 
  
  for (int i=1; i<COLS; i++) {
    for (int j=3; j<ROWS; j++) {
      ellipse(-W+i*D, -H+j*D, R, R);
    }
  }
  
  save("charlie-s-angels.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
