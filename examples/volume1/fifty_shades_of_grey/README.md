---
permalink: /examples/volume1/fifty_shades_of_grey/
---
# Fifty Shades of Grey (2015)

Drama, Romance, Thriller

## Plot
Literature student Anastasia Steele's life changes forever when she meets handsome, yet tormented, billionaire Christian Grey.

[details](https://www.imdb.com/title/tt2322441/)

## Movie Poster
<img src="fifty-shades-of-grey.png"  width="360px" title="Fifty Shades of Grey">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Fifty Shades of Grey (2015)


final int ROWS = 10;
final int COLS = 5;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  scale(width/COLS, height/ROWS);

  float dC = 256/50.0;
  
  noStroke();
  
  int index = 50;
  for (int j=0; j<ROWS; j++) {
    for (int i=0; i<COLS; i++) {
      fill(index*dC);
      rect(i, j, 1, 1);
      index--;
    }
  }
  
  save("fifty-shades-of-grey.png"); 
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
