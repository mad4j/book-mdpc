---
permalink: /examples/volume2/m/
title: M (1931) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# M (1931)

Crime, Drama, Mystery

## Plot
When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.

[details](https://www.imdb.com/title/tt0022100/)

## Movie Poster
<img src="M.png"  width="360px" title="M">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// M (1931)


final color PAPER = color(250, 185, 105);
final color INK = color(245, 50, 15);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
 
  float d = min(width, height) / 8.0;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(d/1.5);
  
  line(-d, 0,  0, d);
  line( d, 0,  0, d);
  
  line(-d, 0, -d, 2.5*d);
  line( d, 0,  d, 2.5*d);
  
  save("M.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
