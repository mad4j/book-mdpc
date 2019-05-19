---
permalink: /examples/volume3/memento/
---
# Memento (2000)

Mystery, Thriller

## Plot
A man juggles searching for his wife's murderer and keeping his short-term memory loss from being an obstacle.

[details](https://www.imdb.com/title/tt0209144/)

## Movie Poster
<img src="memento.png"  width="360px" title="Memento">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Memento

final color PAPER = color(30);
final color INK = color(240);

final int SIZE = 200;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  rotate(-QUARTER_PI/2);
  
  background(PAPER);
  fill(INK);
  
  rectMode(CENTER);
  
  rect(0, 0, SIZE, 1.2*SIZE);
  translate(0, -0.1*SIZE);
  
  fill(32);
  
  rect(0, 0, 0.9*SIZE, 0.9*SIZE);
  
  save("memento.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
