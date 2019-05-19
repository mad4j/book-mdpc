---
permalink: /examples/volume2/lord_of_the_rings_the/
---
# The Lord of the Rings (1978)

Animation, Adventure, Fantasy

## Plot
The Fellowship of the Ring embark on a journey to destroy the One Ring and end Sauron's reign over Middle-earth.

[details](https://www.imdb.com/title/tt0077869/)

## Movie Poster
<img src="the-lord-of-the-rings.png"  width="360px" title="The Lord of the Rings">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Lord of the Rings (1978)
// Animation, Adventure, Fantasy 
// http://www.imdb.com/title/tt0077869/


final color PAPER = color(45, 60, 40);
final color INK = color(245, 220, 0);

final float  SIZE = 0.625;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(0.5*width, 0.5*height);
  scale(min(width, height));
 
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(0.15*SIZE);
  
  ellipseMode(CENTER);
  ellipse(0, 0, SIZE, SIZE);
  
  save("the-lord-of-the-rings.png");
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
