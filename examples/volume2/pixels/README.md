---
permalink: /examples/volume2/pixels/
---
# Pixels (2015)

Action, Comedy, Sci-Fi

## Plot
When aliens misinterpret video feeds of classic arcade games as a declaration of war, they attack the Earth in the form of the video games.

[details](https://www.imdb.com/title/tt2120120/)

## Movie Poster
<img src="pixels.png"  width="360px" title="Pixels">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Pixels

final color PAPER = color(32);
final color INK1 = color(250, 175, 145);
final color INK2 = color(255, 245, 0);

final int SIZE = 10;
final int DOTS = 8;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  scale(SIZE);
  
  background(PAPER);
  
  stroke(INK1);
  
  for (int i=0; i<DOTS; i++) {
    point(i*3, 0);
  }
  
  noStroke();
  fill(INK2);
  arc(-SIZE/2, 0, SIZE, SIZE, QUARTER_PI, TWO_PI-QUARTER_PI, PIE);
  
  save("pixels.png");
  
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
