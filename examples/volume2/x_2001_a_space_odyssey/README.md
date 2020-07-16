---
permalink: /examples/volume2/x_2001_a_space_odyssey/
title: 2001: A Space Odyssey (1968) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# 2001: A Space Odyssey (1968)

Adventure, Sci-Fi

## Plot
Humanity finds a mysterious, obviously artificial object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.

[details](https://www.imdb.com/title/tt0062622/)

## Movie Poster
<img src="2001-a-space-odyssey.png"  width="360px" title="2001: A Space Odyssey">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// 2001 A Space Odyssey (1968)


final color PAPER = color(255, 230, 180);
final color INK1 = color(0);
final color INK2 = color(65);


void settings() {
  size(480, 640, P3D);
  smooth(8);
  noLoop();
}


void draw()  {
  
  float fov = PI/3.0;
  float camZ = (height/2.0) / tan(fov/2.0); 
  float aspect =  float(width)/float(height);
  perspective(fov, aspect, camZ/2.0, camZ*2.0); 
  
  translate(width/2.0, height/2.0, 0);
  rotateX(-PI/6); 
  rotateY(PI/3);
  
  background(PAPER);
  lights();
  
  fill(INK1);
  stroke(INK2);
  strokeWeight(2.0); 
  box(40, 360, 160); 
  
  save("2001-a-space-odyssey.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
