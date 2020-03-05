---
permalink: /examples/volume2/godfather_the/
---
# The Godfather (1972)

Crime, Drama

## Plot
The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.

[details](https://www.imdb.com/title/tt0068646/)

## Movie Poster
<img src="the-godfather.png"  width="360px" title="The Godfather">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// The Godfather


final color PAPER = color(10);
final color INK = color(240);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  triangle(0.15*width, 0, 0.85*width, 0, 0.5*width, 1.4*height);
  
  fill(PAPER);
  
  translate(width/2.0, height/4.0);
  
  float sx = min(width, height) / 4.8;
  float sy = sx / 2.0;
   
  beginShape();
    vertex(-sx, -sy);
    vertex( sx,  sy);
    vertex( sx, -sy);
    vertex(-sx,  sy);
  endShape();

  save("the-godfather.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
