# Slumdog Millionaire (2008)

Drammatico

## Il film in breve
A Mumbai teen reflects on his upbringing in the slums when he is accused of cheating on the Indian Version of "Who Wants to be a Millionaire?"

[dettagli](https://www.imdb.com/title/tt1010048/)

## La locandina
<img src="slumdog-millionaire.png"  width="360px" title="Slumdog Millionaire">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Slumdog millionaire

final color PAPER = color(0, 0, 0);
final color INK1 = color(120, 60, 255);
final color INK2 = color(225, 225, 225);

void  setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, 2*height/3.0);
  
  background(PAPER);
  
  stroke(INK2);
  strokeWeight(3.0);
  
  fill(INK1);
  
  line(-width/2.0, -100, width/2.0, -100);
  line(-width/2.0,    0, width/2.0,    0);
  line(-width/2.0,  100, width/2.0,  100);
  
  drawCell(         0, -100, 400, 50);
  drawCell(-width/4.0,    0, 150, 50);
  drawCell( width/4.0,    0, 150, 50);
  drawCell(-width/4.0,  100, 150, 50);
  drawCell( width/4.0,  100, 150, 50);
  
  save("slumdog-millionaire.png");
}

void drawCell(float x, float y, float w, float h) {
  
  pushMatrix();
  
  translate(x, y);
  
  float w2 = w/2.0;
  float h2 = h/2.0;
  
  beginShape();
  vertex(-w2,      0);
  vertex(-w2+10, -h2);
  vertex( w2-10, -h2);
  vertex( w2,      0);
  vertex( w2-10,  h2);
  vertex(-w2+10,  h2);
  vertex(-w2,      0);
  endShape();
  
  popMatrix();
}
```
