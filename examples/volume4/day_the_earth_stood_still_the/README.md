---
permalink: /examples/volume4/day_the_earth_stood_still_the/
title: The Day the Earth Stood Still (1951) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# The Day the Earth Stood Still (1951)

Drama, Sci-Fi

## Plot
An alien lands and tells the people of Earth that they must live peacefully or be destroyed as a danger to other planets.

[details](https://www.imdb.com/title/tt0043456/)

## Movie Poster
<img src="the-day-the-earth-stood-still.png"  width="360px" title="The Day the Earth Stood Still">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// The day the Earth stood still (1951)


final color PAPER = color(35);
final color INK = color(240);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.8 * min(width, height);
  
  translate(0.5*width, 0.3*height);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  ellipse(0, 0, s, 0.15*s);
  filter(BLUR, 6);
  
  ellipse(0, 0, 0.3*s, 0.2*s);
  filter(BLUR, 6);
  
  save("the-day-the-earth-stood-still.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
