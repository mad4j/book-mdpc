# Blood Diamond (2006)



## Il film in breve
TBV

[dettagli](https://www.imdb.com/title/tt0450259/)

## La locandina
<img src="blood-diamond.png"  width="360px" title="Blood Diamond">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Blood Diamond (2006)


final color PAPER = color(120);
final color INK1 = color(255, 235, 230);
final color INK2 = color(165, 10, 30);

final float L = 0.08;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  noStroke();
  
  fill(INK1);

  beginShape();
    vertex(-3*L,  -L);
    vertex( 3*L,  -L);
    vertex( 4*L, 0.0);
    vertex( 0.0, 5*L);
    vertex(-4*L, 0.0);
  endShape(CLOSE);
  
  translate(0, 7*L);
  
  fill(INK2);
  
  triangle(0, -1.4*L, 0.52*L, 0, -0.52*L, 0);
  ellipse(0, 0, L, L);
  
  save("blood-diamond.png");
}
```
