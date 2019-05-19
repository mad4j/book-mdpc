---
permalink: /examples/volume2/dune/
---
# Dune (1984)

Action, Adventure, Sci-Fi

## Plot
A Duke's son leads desert warriors against the galactic emperor and his father's evil nemesis when they assassinate his father and free their desert world from the emperor's rule.

[details](https://www.imdb.com/title/tt0087182/)

## Movie Poster
<img src="dune.png"  width="360px" title="Dune">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Dune


final color PAPER = color(255, 160, 10);
final color INK = color(255, 205, 60);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  float s = 0.6 * min(width, height);
  
  ellipse(0, 0, s, s);
  filter(BLUR, 8);
  ellipse(0, 0, s, s);
  
  save("dune.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
