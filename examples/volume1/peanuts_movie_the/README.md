# The Peanuts Movie (2015)

2015

## Il film in breve
Snoopy embarks upon his greatest mission as he and his team take to the skies to pursue their arch-nemesis, while his best pal Charlie Brown begins his own epic quest back home to win the love of his life.

[dettagli](https://www.imdb.com/title/tt2452042/)

## La locandina
<img src="the-peanuts-movie.png"  width="360px" title="The Peanuts Movie">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// The Peanuts Movie


final color PAPER = color(245, 220, 110);
final color INK1 = color(180, 50, 50);
final color INK2 = color(40);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = min(width, height) / 480;
  
  translate(width/2.0, 2*height/3.0);
  scale(s);
  
  background(PAPER);
  fill(INK1);
  
  strokeWeight(2.0);
  stroke(INK2);
  
  rectMode(CENTER);
  rect(0, 0, 200, 150);
  
  translate(0, -120);
  quad(-100, -100, 100, -100, 150, 100, -150, 100);
  
  save("the-peanuts-movie.png");
}
```
