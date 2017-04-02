# Labyrinth (1986)

Avventura, Ragazzi, Fantascico

## Il film in breve
A 16-year old girl is given 13 hours to solve a labyrinth and rescue her baby brother when her wish for him to be taken away is granted by the Goblin King.

[dettagli](https://www.imdb.com/title/tt0091369/)

## La locandina
<img src="labyrinth.png"  width="360px" title="Labyrinth">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Labyrinth (1986)
// Adventure, Family, Fantasy
// http://www.imdb.com/title/tt0091369/

// See also:
// 10 PRINT CHR$(205.5+RND(1)); : GOTO 10


final color PAPER = color(255, 235, 130);
final color INK = color(30);

final float SCALE = 30.0;
final float STROKE = 6.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  scale(SCALE);
  
  final float MAX_X = width/SCALE;
  final float MAX_Y = height/SCALE;
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeCap(ROUND);
  strokeWeight(STROKE / SCALE);
  
  randomSeed(7);
  
  for (int x=0; x<MAX_X; x++) {
    for (int y=0; y<MAX_Y; y++) {

      float r = random(1);
      line(x+(int)(0.5+r), y, x+(int)(1.5-r), y+1);
    }
  }

  save("labyrinth.png");
}
```
