---
permalink: /examples/volume1/reservoir_dogs/
---
# Reservoir Dogs (1992)

Crime, Drama, Thriller

## Plot
After a simple jewelry heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.

[details](https://www.imdb.com/title/tt0105236/)

## Movie Poster
<img src="reservoir-dogs.png"  width="360px" title="Reservoir Dogs">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Reservoir dogs


final float D1 = 120;
final float D2 = 0.1*D1;

final color PAPER = color(40, 40, 40);

final color[] INKS = new color[] {
  color(30, 150, 210),
  color(110, 70, 20),
  color(230, 215, 5),
  color(245, 125, 10),
  color(245, 245, 245),
  color(200, 55, 145),
};

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  int count = INKS.length;
  float step = (float)width / (count+1);
 
  translate((width-(count-1)*step)/2.0, height/3.0);

  background(PAPER);
  noStroke();
  
  for (int i=0; i<count; i++) {
    
    fill(INKS[i]);
    
    quad(0, D2, D2/2, 0, 0, -D2/2, -D2/2, 0);
    quad(0, 0, D2, D1, 0, D1+D2, -D2, D1);
    
    translate(step, 0.0);
  }
  
  save("reservoir-dogs.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
