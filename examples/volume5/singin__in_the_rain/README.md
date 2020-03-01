---
permalink: /examples/volume5/singin__in_the_rain/
---
# Singin' in the Rain (1952)

Comedy, Musical, Romance

## Plot
A silent film production company and cast make a difficult transition to sound.

[details](https://www.imdb.com/title/tt0045152/)

## Movie Poster
<img src="singin__in_the_rain.png"  width="360px" title="Singin' in the Rain">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2019

// Singin' the Rain (1952)

final color PAPER = color(15, 35, 70);
final color INK1 = color(225, 225, 0);
final color INK2 = color(115, 55, 25);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  background(PAPER);
    
  translate(0.5*width, 0.5*height);
  scale(S, -S);

  stroke(INK2);
  strokeWeight(8*U);
  line(0.00, 0.41, 0.00, -0.35);

  noStroke();  
  fill(INK1);
  arc(0.00, 0.00, 0.90, 0.80, 0.00, PI);
  
  fill(PAPER);
  for (int i=0; i<4; i++) {
    arc(-0.375+i*0.25, 0, 0.25, 0.12, 0.00, PI);
  }
  
  noFill();
  stroke(INK2);
  strokeWeight(8*U);
  arc(0.040, -0.35, 0.080, 0.080, PI, TWO_PI);
 
  save("singin__in_the_rain.png");
}

```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
