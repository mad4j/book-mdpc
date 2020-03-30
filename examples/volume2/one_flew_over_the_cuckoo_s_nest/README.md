---
permalink: /examples/volume2/one_flew_over_the_cuckoo_s_nest/
title: One Flew Over the Cuckoo's Nest (1975) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# One Flew Over the Cuckoo's Nest (1975)

Drama

## Plot
A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.

[details](https://www.imdb.com/title/tt0073486/)

## Movie Poster
<img src="one-flew-over-the-cukoo-s-nest.png"  width="360px" title="One Flew Over the Cuckoo's Nest">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// One flew over the cukoo's nest (1975)


final color PAPER = color(240, 240, 240);
final color INK = color(30, 30, 30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {

  final float SIZE = 0.55*min(width, height);
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  ellipseMode(CENTER);
  arc(0, -0.05*SIZE, SIZE, SIZE, -PI, 0);
  
  rectMode(CENTER);
  rect(0, 0.05*SIZE, 1.05*SIZE, 0.25*SIZE, 10);
  
  save("one-flew-over-the-cukoo-s-nest.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
