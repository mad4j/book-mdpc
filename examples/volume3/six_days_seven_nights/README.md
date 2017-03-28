# Six Days Seven Nights (1998)

Action, Adventure, Comedy

## Il film in breve
Robin Monroe, a New York magazine editor, and the gruff pilot Quinn Harris must put aside their mutual dislike if they are to survive after crash landing on a deserted South Seas island.

[dettagli](https://www.imdb.com/title/tt0120828/)

## La locandina
<img src="six-days-seven-nights.png"  width="360px" title="Six Days Seven Nights">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Six Days Seven Nights

final color PAPER = color(96, 78, 151);
final color INK1 = color(255, 255, 0);
final color INK2 = color(244, 243, 242);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  translate(width/2.0, 0);
  
  int phase = 1;
  for (int j=0; j<2; j++) {
    for (int i=-1; i<2; i++) {
      drawSun(i*120, 100+j*110, 40, 8);
      drawMoon(i*120, 320+j*110, 60, phase++);
    }
  }
  drawMoon(0, 540, 60, 8);
  
  save ("six-days-seven-nights.png");
}

void drawSun(float x, float y, float r, int rays) {
  
  fill(INK1);
  stroke(INK1);
  strokeWeight(r/6.0);
  
  pushMatrix();
  
  translate(x, y);
  ellipseMode(CENTER);
  ellipse(0, 0, r, r);
  
  float offset = r/2.0 + r/4.0;
  
  for (int i=0; i<=rays; i++) {
    line(offset, 0, offset+r/2.0, 0);
    rotate(TWO_PI / rays);
  }
  
  popMatrix();
}

void drawMoon(float x, float y, float r, int phase) {
  
  pushMatrix();
  
  translate(x, y);
  rotate(HALF_PI/2.0);
  
  fill(INK2);
  noStroke();
  
  ellipseMode(CENTER);
  arc(0, 0, r, r, 0, PI, OPEN);
    
  fill((phase<4) ? PAPER : INK2);
  float offset = abs(r/4 * (phase-4));
  float angle = (phase < 4) ? 0 : PI;
  arc(0, 0, r, offset, angle, angle+PI+1, OPEN);
  
  popMatrix();
}

```
