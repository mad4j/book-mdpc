# King Kong (1933)

Avventura, Orrore, Fantascienza

## Il film in breve
A film crew goes to a tropical island for an exotic location shoot and discovers a colossal ape who takes a shine to their female blonde star. He is then captured and brought back to New York City for public exhibition.

[dettagli](https://www.imdb.com/title/tt0024216/)

## La locandina
<img src="king-kong.png"  width="360px" title="King Kong">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 201

// King Kong (1933)


final color PAPER = color(195, 190, 155);
final color INK1 = color(75);
final color INK2 = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.3*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  stroke(INK1);
  strokeCap(SQUARE);
  
  strokeWeight(8*U);
  line(0, 0, 0, 1);
  
  strokeWeight(40*U);
  line(0, 0.09, 0, 1);
  
  strokeWeight(60*U);
  line(0, 0.12, 0, 1);
  
  strokeWeight(80*U);
  line(0, 0.15, 0, 1);
  
  strokeWeight(100*U);
  line(0, 0.18, 0, 1);
  
  pushMatrix();
  translate(-0.085, 0.22);
  drawHand();
  
  popMatrix();
  translate(0.085, 0.32);
  drawHand();
  
  save("king-kong.png");
}


void drawHand() {
  
  fill(INK2);
  noStroke();
  
  rectMode(CENTER);
  
  rect(0, 0.00, 0.07, 0.03, 0.04);
  rect(0, 0.03, 0.07, 0.03, 0.04);
  rect(0, 0.06, 0.07, 0.03, 0.04);
}
```
