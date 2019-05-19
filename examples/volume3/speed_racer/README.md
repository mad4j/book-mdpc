---
permalink: /examples/volume3/speed_racer/
---
# Speed Racer (2008)

Action, Family, Sci-Fi

## Plot
A young driver, Speed Racer, aspires to be champion of the racing world with the help of his family and his high-tech Mach 5 automobile.

[details](https://www.imdb.com/title/tt0811080/)

## Movie Poster
<img src="speed-racer.png"  width="360px" title="Speed Racer">


## The code
```java

final color PAPER = color(230, 165, 25);
final color INK = color(225, 40, 45);

final int SIZE = 40;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  for (int i=0; i<width/SIZE; i++) {
    for (int j=0; j<height/SIZE; j++) {
      if ((i+j)%2 == 0) {
        rect(i*SIZE, j*SIZE, SIZE, SIZE);
      }
    }
  }
  
  save("speed-racer.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
