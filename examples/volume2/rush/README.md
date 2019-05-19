---
permalink: /examples/volume2/rush/
---
# Rush (2013)

Action, Biography, Drama

## Plot
The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.

[details](https://www.imdb.com/title/tt1979320/)

## Movie Poster
<img src="rush.png"  width="360px" title="Rush">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Rush

final color PAPER = color(244);
final color INK = color(227, 0, 30);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  beginShape();
    vertex(0, 0);
    vertex(width, 0);
    vertex(width, 2*height/3.0);
    vertex(width/2.0, height/2.0);
    vertex(0, 2*height/3.0);
  endShape();
  
  save("rush.png");
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
