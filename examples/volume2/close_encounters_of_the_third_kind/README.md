---
permalink: /examples/volume2/close_encounters_of_the_third_kind/
---
# Close Encounters of the Third Kind (1977)

Drama, Sci-Fi

## Plot
After an encounter with U.F.O.s, a line worker feels undeniably drawn to an isolated area in the wilderness where something spectacular is about to happen.

[details](https://www.imdb.com/title/tt0075860/)

## Movie Poster
<img src="close-encounters-of-the-third-kind.png"  width="360px" title="Close Encounters of the Third Kind">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Close encounters of the third kind (1977)


final color PAPER = color(0);
final color INK = color(50);


final color[] INKS = new color[] {
  color(240, 0, 0),
  color(0, 240, 0),
  color(0, 0, 240),
  color(240, 240, 0)
};


final int COLS = 6;
final int ROWS = 5;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float w = width/(COLS+1);
  float h = w/2.0;
  
  println(w);
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  stroke(PAPER);
  strokeWeight(w/35);
  
  for (int i=0; i<COLS; i++) {
    for (int j=0; j<ROWS; j++) {
      
      if ((int)random(2) == 0) {
        fill(INKS[(int)random(INKS.length)]);
      } else {
        fill(INK);
      }

      rect(w*(i-COLS/2.0), h*(j-ROWS/2.0), w, h);
    }
  }
  
  save("close-encounters-of-the-third-kind.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
