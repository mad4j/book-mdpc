---
permalink: /examples/volume2/gandhi/
---
# Gandhi (1982)

Biography, Drama, History

## Plot
Gandhi's character is fully explained as a man of nonviolence. Through his patience, he is able to drive the British out of the subcontinent. And the stubborn nature of Jinnah and his commitment towards Pakistan is portrayed.

[details](https://www.imdb.com/title/tt0083987/)

## Movie Poster
<img src="gandhi.png"  width="360px" title="Gandhi">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Gandhi


final color PAPER = color(235, 225, 160);
final color INK1 = color(240);
final color INK2 = color(165, 75, 30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  //lens diameter
  float s1 = 0.3 * min(width, height);
  //lens border
  float s2 = 0.05*s1;
  //lens center
  float cx = 0.7*s1;
  //lens external border
  float bx = cx + 0.5*s1;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  fill(INK1);
  stroke(INK2);
  strokeWeight(s2);
  
  ellipse(-cx, 0, s1, s1);
  ellipse( cx, 0, s1, s1);
  
  noFill();
  arc(0, 0, 0.5*s1, 4.0*s2, -PI, 0, OPEN);
  line(-bx-2*s2, 0, -bx, 0);
  line( bx+2*s2, 0,  bx, 0);
  
  save("gandhi.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
