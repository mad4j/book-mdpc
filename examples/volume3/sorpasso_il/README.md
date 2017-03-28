# Il Sorpasso (1962)

1962

## Il film in breve
An impulsive braggart takes a shy law student for a two-day ride through the Roman and Tuscany countries.

[dettagli](https://www.imdb.com/title/tt0056512/)

## La locandina
<img src="il-sorpasso.png"  width="360px" title="Il Sorpasso">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Il Sorpasso

final color PAPER = color(240);
final color INK1 = color(0, 105, 165);
final color INK2 = color(190, 0, 50);

final float STROKE = 20.0;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  strokeWeight(STROKE);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  noFill();
  
  stroke(INK1);
  line(300, 400, 300, 250);
  line(300, 250, 300-STROKE, 250+STROKE);
  line(300, 250, 300+STROKE, 250+STROKE);
  
  stroke(INK2);
  beginShape();
    vertex(300, 550); vertex(300, 450);
    vertex(250, 400); vertex(250, 250);
    vertex(250, 250); vertex(300, 200);
    vertex(300, 100);
  endShape();
  line(300, 100, 300-STROKE, 100+STROKE);
  line(300, 100, 300+STROKE, 100+STROKE);
  
  save("il-sorpasso.png");
}
```
