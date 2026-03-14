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
// Daniele Olmisani, 2024

// SPECTRE (2015)


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S = min(width, height);

  translate(0.5*width, 0.5*height);
  scale(S);

  background(255);

  noStroke();
  fill(200, 30, 30);

  beginShape();

  // PUNTO DI PARTENZA: Testa in alto al centro
  vertex(0.0000, -0.4100);

  // --- LATO DESTRO ---
  // Testa (curva destra, ampia e circolare)
  bezierVertex(0.1400, -0.4100, 0.1400, -0.2700, 0.0600, -0.2350);

  // Spalla destra (collo stretto, spalla ampia)
  bezierVertex(0.1700, -0.1600, 0.3400, -0.2800, 0.4400, -0.0900);

  // Tentacolo esterno (3° da destra) - punta curva
  bezierVertex(0.4800, -0.0050, 0.4400,  0.0900, 0.3700,  0.1300);

  // Membrana tra 3° e 2° tentacolo
  bezierVertex(0.3450, -0.0050, 0.3250, -0.1200, 0.3050, -0.1200);

  // Tentacolo medio (2° da destra) - punta
  bezierVertex(0.2850, -0.1200, 0.2650,  0.0600, 0.2400,  0.2100);

  // Membrana tra 2° e 1° tentacolo
  bezierVertex(0.2200,  0.0200, 0.2050, -0.0950, 0.1850, -0.0950);

  // Tentacolo interno (1° da destra) - punta
  bezierVertex(0.1650, -0.0950, 0.1450,  0.0800, 0.1200,  0.2800);

  // Membrana tra 1° tentacolo e centrale
  bezierVertex(0.1000,  0.0500, 0.0850, -0.0550, 0.0650, -0.0550);

  // Tentacolo centrale - punta (il più lungo)
  bezierVertex(0.0450, -0.0550, 0.0250,  0.2500, 0.0000,  0.4400);

  // --- LATO SINISTRO (Specchiato perfettamente) ---

  // Tentacolo centrale (risalita lato sinistro)
  bezierVertex(-0.0250,  0.2500, -0.0450, -0.0550, -0.0650, -0.0550);

  // Membrana tra centrale e 1° sinistro
  bezierVertex(-0.0850, -0.0550, -0.1000,  0.0500, -0.1200,  0.2800);

  // Tentacolo interno (1° da sinistra)
  bezierVertex(-0.1450,  0.0800, -0.1650, -0.0950, -0.1850, -0.0950);

  // Membrana tra 1° e 2° sinistro
  bezierVertex(-0.2050, -0.0950, -0.2200,  0.0200, -0.2400,  0.2100);

  // Tentacolo medio (2° da sinistra)
  bezierVertex(-0.2650,  0.0600, -0.2850, -0.1200, -0.3050, -0.1200);

  // Membrana tra 2° e 3° sinistro
  bezierVertex(-0.3250, -0.1200, -0.3450, -0.0050, -0.3700,  0.1300);

  // Tentacolo esterno (3° da sinistra)
  bezierVertex(-0.4400,  0.0900, -0.4800, -0.0050, -0.4400, -0.0900);

  // Spalla sinistra
  bezierVertex(-0.3400, -0.2800, -0.1700, -0.1600, -0.0600, -0.2350);

  // Testa (curva sinistra fino a chiudere)
  bezierVertex(-0.1400, -0.2700, -0.1400, -0.4100, 0.0000, -0.4100);

  endShape(CLOSE);

  save("spectre.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
