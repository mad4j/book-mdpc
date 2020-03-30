---
permalink: /examples/volume2/ant_man/
title: Ant-Man (2015) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Ant-Man (2015)

Action, Adventure, Comedy

## Plot
Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.

[details](https://www.imdb.com/title/tt0478970/)

## Movie Poster
<img src="ant-man.png"  width="360px" title="Ant-Man">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Ant Man (2015)


final color PAPER = color(240);
final color INK = color (0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.004 * min(width, height);
  
  translate(0.50*width, 0.75*height);
  scale(s);
  
  background(PAPER);
  stroke(INK);
  
  line( 0, 0,  0, 2);
  line(-1, 1,  1, 1);
  line(-1, 3, -1, 3);
  line( 1, 3,  1, 3);
  
  filter(BLUR, sqrt(s)-0.41);

  save("ant-man.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
