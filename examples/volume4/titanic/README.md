# Titanic (1997)

Drama, Romance

## Il film in breve
A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.

[dettagli](https://www.imdb.com/title/tt0120338/)

## La locandina
<img src="titanic.png"  width="360px" title="Titanic">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Titanic


final color PAPER = color(0, 35, 60);
final color INK1 = color(10, 10, 20);
final color INK2 = color(50, 60, 80);
final color INK3 = color(240);
final color INK4 = color(50, 80, 135, 100);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(0.5*width, 0.7*height);
  scale(min(width, height));
  
  background(PAPER);
  
  noStroke();
  
  fill(INK1);
  quad(0.0, -0.85, -0.1, -0.77, 0.0, 0.0, 0.1, -0.77);
  quad(0.0, -0.7,  0.3, -0.5,  0.2, 0.0, 0.0, 0.0);
  
  fill(INK2);
  quad(0.0, -0.7, -0.3, -0.5, -0.2, 0.0, 0.0, 0.0);
  
  fill(INK3);
  beginShape();
    vertex(-0.2,  0.0);
    vertex(-0.1, -0.5);
    vertex( 0.0, -0.2);
    vertex( 0.1, -0.3);
    vertex( 0.2,  0.0);
    vertex( 0.0,  0.2);
  endShape(CLOSE);
  
  fill(INK4);
  rect(-0.5, -0.15, width, height);
  
  save("titanic.png");
}
```
