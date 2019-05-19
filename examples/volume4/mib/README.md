---
permalink: /examples/volume4/mib/
---
# Men in Black (1997)

Adventure, Comedy, Family

## Plot
A police officer joins a secret organization that polices and monitors extraterrestrial interactions on Earth.

[details](https://www.imdb.com/title/tt0119654/)

## Movie Poster
<img src="mib.png"  width="360px" title="Men in Black">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// MIB


final color PAPER = color(0);
final color INK1 = color(240);
final color INK2 = color(170, 10, 45);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.1 * min(width, height);
  
  background(PAPER);
  
  translate(0.5*width, 0.25*height);
  
  fill(INK2);
  stroke(INK1);
  strokeWeight(s);
  
  line(0, 0, 0, 7*s);
  
  strokeWeight(0.2*s);
  rectMode(CENTER);
  rect(0, 0.5*s, 1.2*s, 0.7*s, s);
  
  save("mib.png");
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
