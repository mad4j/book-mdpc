---
permalink: /examples/volume4/et_the_extra_terrestrial/
---
# E.T. the Extra-Terrestrial (1982)

Family, Sci-Fi

## Plot
A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.

[details](https://www.imdb.com/title/tt0083866/)

## Movie Poster
<img src="et-the-extra-terrestrial.png"  width="360px" title="E.T. the Extra-Terrestrial">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// E.T. the extra-terrestrial


final color PAPER = color(115, 145, 155);
final color INK = color(125, 75, 20);

final int COLS = 8;

final String SPRITE = 
  "XXXXXXX." +
  "X.XXXXXX" +
  "XXXXXXXX" +
  "XXXXXXXX" +
  "XX....XX" +
  "....XXXX" +
  "...XXXXX" +
  "XXXXXXXX" +
  "X.XXXXXX" +
  "..XXXXXX" +
  "..XXXXXX" +
  "..X...XX" +
  ".XX...XX" +
  "XXX..XXX";


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.7 * (min(width, height) / (2*COLS));
  float l = SPRITE.length();

  translate((width-2*s*COLS)/2.0, (height-s*l/COLS)/2.0);
  scale(2*s, s);
   
  background(PAPER);
  
  fill(INK);
  noStroke();
  //stroke(PAPER);
  //strokeWeight(1.0/s);
  
  for (int i=0; i<l; i++) {
    
    if (SPRITE.charAt(i) == 'X') {
      rect(i%COLS, i/COLS, 1, 1);
    }
  }
  
  save("et-the-extra-terrestrial.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
