---
permalink: /examples/volume2/green_lantern/
---
# Green Lantern (2011)

Action, Adventure, Sci-Fi

## Plot
Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.

[details](https://www.imdb.com/title/tt1133985/)

## Movie Poster
<img src="green-lantern.png"  width="360px" title="Green Lantern">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Green Lantern

final color PAPER = color(10, 110, 40);
final color INK = color(255);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {

  float s = 0.7 * min(width, height);
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  noStroke();
  
  
  fill(INK);
  ellipse(0, 0, s, s);
  
  fill(PAPER);
  ellipse(0, 0, 0.5*s, 0.5*s);
  
  fill(INK);
  ellipse(0, 0, 0.3*s, 0.3*s);
  
  stroke(PAPER);
  strokeWeight(0.1*s);
  strokeCap(SQUARE);
  
  line(-0.3*s, -0.25*s, 0.3*s, -0.25*s);
  line(-0.3*s,  0.25*s, 0.3*s,  0.25*s);
  
  save("green-lantern.png");
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
