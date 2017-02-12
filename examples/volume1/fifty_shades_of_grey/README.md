# Fifty Shades of Grey (2015)

Drammatico, Romantico, Thriller

## Il film in breve
Bella giovane ed inspiegabilemente ancora vergine, scopre che essere legata e corcata non rientra nella sua idea di romanticismo

[dettagli](https://www.imdb.com/title/tt2322441/)

## La locandina
<img src="fifty-shades-of-grey.png"  width="360px" title="Fifty Shades of Grey">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Fifty Shades of Grey


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
