---
permalink: /examples/volume5/v_for_vendetta/
---
# V for Vendetta (2005)

Action, Drama, Sci-Fi

## Plot
In a future British tyranny, a shadowy freedom fighter, known only by the alias of "V", plots to overthrow it with the help of a young woman.

[details](https://www.imdb.com/title/tt0434409/)

## Movie Poster
<img src="v-for-vendetta.png"  width="360px" title="V for Vendetta">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// V for Vendetta (2005)


final color PAPER = color(0);
final color INK = color(150, 0, 20);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);

  stroke(INK);
  strokeWeight(100*U);
  
  line(-0.6, -0.8, 0.0, 0.7);
  line( 0.6, -0.8, 0.0, 0.7);
  
  save("v-for-vendetta.png");
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
