---
permalink: /examples/volume5/singin__in_the_rain/
title: Singin' in the Rain (1952) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Singin' in the Rain (1952)

Comedy, Musical, Romance

## Plot
A silent film production company and cast make a difficult transition to sound.

[details](https://www.imdb.com/title/tt0045152/)

## Movie Poster
<img src="singin__in_the_rain.png"  width="360px" title="Singin' in the Rain">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Singin' in the Rain (1952)


final color PAPER = color(15, 35, 70);
final color INK1 = color(225, 225, 0);
final color INK2 = color(115, 55, 25);
final color INK3 = color(140);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  background(PAPER);
    
  translate(0.5*width, 0.5*height);
  scale(S, -S);

  randomSeed(0);

  stroke(INK3);
  strokeWeight(U);
  for (float w=-1.0; w<1.0; w+=(2.0/80)) {
    float a, b = 0.0;
    while (b < 0.8) {
      a = b + random(0.1);
      b = a + random(0.1);
      line(w, a, w, b);
    }
  }

  stroke(INK2);
  strokeWeight(8*U);
  line(0.00, 0.41, 0.00, -0.35);

  noStroke();  
  fill(INK1);
  arc(0.00, 0.00, 0.90, 0.80, 0.00, PI);
  
  fill(PAPER);
  stroke(PAPER);
  strokeWeight(U);
  for (int i=0; i<4; i++) {
    arc(-0.375+i*0.25, 0, 0.25, 0.12, 0.00, PI, CHORD);
  }
  
  noFill();
  stroke(INK2);
  strokeWeight(8*U);
  arc(0.040, -0.35, 0.080, 0.080, PI, TWO_PI);
 
  save("singin__in_the_rain.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
