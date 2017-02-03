# Cat's Eye (1985)

Commedia, Horror, Thriller

## Il film in breve
TBD

[details](https://www.imdb.com/title/tt0088889/)

## La locandina
<img src="cat's-eye.png"  width="360px" title="Cat's Eye">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Stephen King's Cat's Eye


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
