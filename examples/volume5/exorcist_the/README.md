---
permalink: /examples/volume5/exorcist_the/
---
# The Exorcist (1973)

Horror

## Plot
When a 12 year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her.

[details](https://www.imdb.com/title/tt0070047/)

## Movie Poster
<img src="the-exorcist.png"  width="360px" title="The Exorcist">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// The Exorcist (1973)


final color PAPER = color(30);
final color INK = color(225);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.6*height);
  scale(S);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(25*U);
  strokeCap(SQUARE);
  
  line( 0.0,  0.2,  0.0, -0.5);
  line(-0.2,  0.0,  0.2,  0.0);
  
  save("the-exorcist.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
