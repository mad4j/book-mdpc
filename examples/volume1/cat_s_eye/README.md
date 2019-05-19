---
permalink: /examples/volume1/cat_s_eye/
---
# Cat's Eye (1985)

Comedy, Horror, Thriller

## Plot
A stray cat is the linking element of three tales of suspense and horror.

[details](https://www.imdb.com/title/tt0088889/)

## Movie Poster
<img src="cat's-eye.png"  width="360px" title="Cat's Eye">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Stephen King's Cat's Eye (1985)


final color PAPER = color(15);
final color INK = color(240, 240, 210);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
 
  float s = 1.35 * width;
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK);
  ellipse(0, 0, s, 0.75*s);
  
  fill(PAPER);
  ellipse(0, 0, 0.15*s, 0.70*s);
  
  save("cat's-eye.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
