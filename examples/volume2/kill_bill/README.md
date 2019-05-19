---
permalink: /examples/volume2/kill_bill/
---
# Kill Bill: Vol. 1 (2003)

Action, Crime, Thriller

## Plot
The Bride wakens from a four-year coma. The child she carried in her womb is gone. Now she must wreak vengeance on the team of assassins who betrayed her - a team she was once part of.

[details](https://www.imdb.com/title/tt0266697/)

## Movie Poster
<img src="kill-bill.png"  width="360px" title="Kill Bill: Vol. 1">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Kill Bill

final color PAPER = color(255, 195, 25);
final color INK = color(30);

final int SIZE = 50;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(SIZE);
  
  line(2*SIZE, 0, 2*SIZE, height);
  
  save("kill-bill.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
