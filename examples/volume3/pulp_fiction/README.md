---
permalink: /examples/volume3/pulp_fiction/
---
# Pulp Fiction (1994)

Crime, Drama

## Plot
The lives of two mob hit men, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.

[details](https://www.imdb.com/title/tt0110912/)

## Movie Poster
<img src="pulp-fiction.png"  width="360px" title="Pulp Fiction">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Pulp Fiction

final color PAPER = color(80, 80, 80);
final color INK = color(220, 50, 50);

final int SPOTS = 1000;

void setup() {
 size(480, 640);
 noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  for (int i=0; i<SPOTS; i++) {
    
    float x = (width/5.0)*randomGaussian();
    float y = (height/5.0)*randomGaussian();
    float r = ((width-abs(x)-abs(y))/25.0)*randomGaussian();
    
    ellipse(x, y, r, r);
  }
  
  save("pulp-fiction.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
