---
permalink: /examples/volume6/spectre/
title: Spectre (2015) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Spectre (2015)

Action, Adventure, Thriller

## Plot
A cryptic message from James Bond's past sends him on a trail to uncover the existence of a sinister organisation named SPECTRE.

[details](https://www.imdb.com/title/tt2379713/)

## Movie Poster
<img src="spectre.png"  width="360px" title="Spectre">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2026

// Spectre (2015)


final color PAPER = color(240);
final color INK = color(140, 5, 5);

final float AXIS = 499.5;
final float Y0 = 0.0;
final float Y1 = 999;


final float[] HP = {
  481,0, 473,1, 459,4, 419,21, 375,60, 361,83, 354,98, 346,121,
  345,128, 344,166, 346,180, 350,195, 363,227, 377,244, 405,281, 418,306,
  419,313, 418,326, 413,339, 394,352, 375,353, 362,350, 299,311, 272,295,
  260,289, 226,274, 212,269, 191,263, 168,261, 129,260, 114,262, 67,281,
  44,301, 19,340, 7,381, 3,397, 1,420, 0,481, 3,510, 11,551,
  17,572, 22,587, 32,613, 50,654, 60,666, 66,666, 69,651, 64,616,
  62,610, 61,603, 57,566, 56,553, 54,539, 53,461, 54,448, 58,423,
  61,409, 76,378, 103,358, 112,357, 136,363, 151,381, 153,392, 151,413,
  146,441, 144,466, 145,518, 146,532, 148,543, 153,582, 163,628, 165,634,
  169,651, 181,688, 192,719, 202,726, 209,704, 208,689, 207,681, 205,674,
  202,637, 201,618, 200,581, 199,572, 200,522, 205,476, 207,469, 209,459,
  221,431, 241,415, 269,413, 293,427, 302,445, 304,456, 304,478, 302,503,
  303,602, 305,631, 307,639, 309,656, 312,675, 328,733, 345,763, 354,758,
  352,727, 349,689, 350,611, 352,577, 356,538, 361,517, 369,497, 388,478,
  413,475, 422,477, 443,491, 455,512, 460,528, 461,532, 464,550, 468,583,
  470,610, 473,665, 475,681, 477,716, 480,781, 490,956, 494,997, 503,999,
  509,968, 512,917
};


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  background(PAPER);
  
  float s = min(width/(2*AXIS), height/(Y1-Y0)) * .9;
  
  translate(width/2-AXIS*s, height/2-(Y0+Y1)/2*s);
  
  scale(s);
  fill(INK);
  noStroke();

  drawContour();

  save("spectre.png");
}


int contourCount() {
  return HP.length;
}


PVector contourPoint(int idx) {
  int n = HP.length / 2;

  if (idx < n) {
    return new PVector(HP[2 * idx], HP[2 * idx + 1]);
  }

  int j = 2 * n - 1 - idx;
  return new PVector(2 * AXIS - HP[2 * j], HP[2 * j + 1]);
}


void drawContour() {
  int count = contourCount();

  beginShape();
    PVector pLast = contourPoint(count - 1);
    curveVertex(pLast.x, pLast.y);
  
    for (int i = 0; i < count; i++) {
      PVector p = contourPoint(i);
      curveVertex(p.x, p.y);
    }
  
    PVector p0 = contourPoint(0);
    PVector p1 = contourPoint(1);
    curveVertex(p0.x, p0.y);
    curveVertex(p1.x, p1.y);
  endShape(CLOSE);
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
