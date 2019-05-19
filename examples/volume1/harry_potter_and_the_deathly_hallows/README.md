---
permalink: /examples/volume1/harry_potter_and_the_deathly_hallows/
---
# Harry Potter and the Deathly Hallows: Part 1 (2010)

Adventure, Family, Fantasy

## Plot
As Harry races against time and evil to destroy the Horcruxes, he uncovers the existence of three most powerful objects in the wizarding world: the Deathly Hallows.

[details](https://www.imdb.com/title/tt0926084/)

## Movie Poster
<img src="harry-potter-and-the-deathly-hallows.png"  width="360px" title="Harry Potter and the Deathly Hallows: Part 1">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Harry Potter and the deathly hallows


final color PAPER = color(50, 55, 90);
final color INK = color(215, 175, 65);

final int RADIUS = 225;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float r = 0.5 * min(width, height);
  println(r);
  float d = TWO_PI/3;
  
  translate(width/2.0, height/2.0);
  rotate(-HALF_PI);
  
  background(PAPER);
  stroke(INK);
  strokeWeight(0.03*r);
  noFill();
  
  ellipse(0, 0, r, r);

  beginShape();
  for (int i=0; i<3; i++) {
    vertex(r*cos(i*d), r*sin(i*d));
  }
  endShape(CLOSE);
  
  line(-r/2, 0, +r, 0);
  
  save("harry-potter-and-the-deathly-hallows.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
