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
  fill(200, 15, 15);

  beginShape();

  // PUNTO DI PARTENZA: Testa in alto al centro
  vertex(0.0000, -0.4300);

  // --- LATO DESTRO ---
  // Testa (curva destra, ampia e circolare)
  bezierVertex(0.1600, -0.4300, 0.1650, -0.2850, 0.0450, -0.2500);

  // Spalla destra (collo stretto, spalla ampia)
  bezierVertex(0.1900, -0.1500, 0.3650, -0.3000, 0.4800, -0.0700);

  // Tentacolo esterno (3° da destra) - punta curva verso l'alto
  bezierVertex(0.5200,  0.0150, 0.4900,  0.1100, 0.3950,  0.0000);

  // Membrana tra 3° e 2° tentacolo
  bezierVertex(0.3600, -0.0600, 0.3300, -0.1400, 0.3100, -0.1400);

  // Tentacolo medio (2° da destra) - punta
  bezierVertex(0.2900, -0.1400, 0.2550,  0.1000, 0.2200,  0.2900);

  // Membrana tra 2° e 1° tentacolo
  bezierVertex(0.2000,  0.0300, 0.1850, -0.1100, 0.1650, -0.1100);

  // Tentacolo interno (1° da destra) - punta
  bezierVertex(0.1450, -0.1100, 0.1250,  0.1300, 0.0950,  0.3700);

  // Membrana tra 1° tentacolo e centrale
  bezierVertex(0.0750,  0.0750, 0.0600, -0.0400, 0.0450, -0.0400);

  // Tentacolo centrale - punta (il più lungo)
  bezierVertex(0.0300, -0.0400, 0.0150,  0.3400, 0.0000,  0.4900);

  // --- LATO SINISTRO (Specchiato perfettamente) ---

  // Tentacolo centrale (risalita lato sinistro)
  bezierVertex(-0.0150,  0.3400, -0.0300, -0.0400, -0.0450, -0.0400);

  // Membrana tra centrale e 1° sinistro
  bezierVertex(-0.0600, -0.0400, -0.0750,  0.0750, -0.0950,  0.3700);

  // Tentacolo interno (1° da sinistra)
  bezierVertex(-0.1250,  0.1300, -0.1450, -0.1100, -0.1650, -0.1100);

  // Membrana tra 1° e 2° sinistro
  bezierVertex(-0.1850, -0.1100, -0.2000,  0.0300, -0.2200,  0.2900);

  // Tentacolo medio (2° da sinistra)
  bezierVertex(-0.2550,  0.1000, -0.2900, -0.1400, -0.3100, -0.1400);

  // Membrana tra 2° e 3° sinistro
  bezierVertex(-0.3300, -0.1400, -0.3600, -0.0600, -0.3950,  0.0000);

  // Tentacolo esterno (3° da sinistra)
  bezierVertex(-0.4900,  0.1100, -0.5200,  0.0150, -0.4800, -0.0700);

  // Spalla sinistra
  bezierVertex(-0.3650, -0.3000, -0.1900, -0.1500, -0.0450, -0.2500);

  // Testa (curva sinistra fino a chiudere)
  bezierVertex(-0.1650, -0.2850, -0.1600, -0.4300, 0.0000, -0.4300);

  endShape(CLOSE);

  save("spectre.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
