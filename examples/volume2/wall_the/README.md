---
permalink: /examples/volume2/wall_the/
---
# Pink Floyd: The Wall (1982)

Animation, Drama, Fantasy

## Plot
A confined but troubled rock star descends into madness in the midst of his physical and social isolation from everyone.

[details](https://www.imdb.com/title/tt0084503/)

## Movie Poster
<img src="the-wall.png"  width="360px" title="Pink Floyd: The Wall">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Wall

final color PAPER = color(255);
final color INK = color(32);

final int W = 80;
final int H = W/2;
final int R = W/10;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(INK);
  stroke(INK);
  fill(PAPER);
  
  for (int j=0; j<height/H; j++) {
    for (int i=0; i<width/W+1; i++) {
      rect(-(W/2)*(j%2)+i*W, j*H, W, H, R);
    }
  }
  
  save("the-wall.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
