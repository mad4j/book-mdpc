---
permalink: /examples/volume1/predator/
---
# Predator (1987)

Action, Sci-Fi, Thriller

## Plot
A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.

[details](https://www.imdb.com/title/tt0093773/)

## Movie Poster
<img src="predator.png"  width="360px" title="Predator">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Predator (1987)


final color PAPER = color(65, 45, 35);
final color INK = color(175, 10, 10);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  
  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  rotate(-PI/2);  
  
  for (int i=0; i<3; i++) {
    rotate(TWO_PI / 3);
    ellipse(0.15, 0.0, 0.1, 0.1);
  }
  
  save("predator.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
