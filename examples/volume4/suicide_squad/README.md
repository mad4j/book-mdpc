---
permalink: /examples/volume4/suicide_squad/
title: Suicide Squad (2016) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Suicide Squad (2016)

Action, Adventure, Fantasy

## Plot
A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.

[details](https://www.imdb.com/title/tt1386697/)

## Movie Poster
<img src="suicide-squad.png"  width="360px" title="Suicide Squad">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Suicide Squad


final color PAPER = color(175, 20, 25);
final color INK = color(0);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float s = 0.02 * min(width, height);
  float l = 4*s;
  
  background(PAPER);
  strokeWeight(s);
  stroke(INK);
  noFill();
  
  translate(0.33*width, 0.33*height);
  line(-l, -l, l, l);
  line(l, -l, -l, l);
  
  resetMatrix();
  translate(0.67*width, 0.33*height);
  line(-l, -l, l, l);
  line(l, -l, -l, l);
  
  resetMatrix();
  translate(0.50*width, 0.45*height);
  rotate(0.1*PI);
  line(3*l, 0, 4*l, 0);
  rotate(0.8*PI);
  line(3*l, 0, 4*l, 0);
  
  resetMatrix();
  translate(0.50*width, 0.45*height);
  arc(0, 0, 7*l, 7*l, 0.1*PI, 0.9*PI);
  
  save("suicide-squad.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
