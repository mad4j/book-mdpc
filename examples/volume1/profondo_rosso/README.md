---
permalink: /examples/volume1/profondo_rosso/
---
# Deep Red (1975)

Horror, Mystery, Thriller

## Plot
After witnessing the murder of a famous psychic, a musician teams up with a feisty reporter to find the killer while evading attempts on their lives by the unseen assailant bent on keeping a dark secret buried.

[details](https://www.imdb.com/title/tt0073582/)

## Movie Poster
<img src="profondo-rosso.png"  width="360px" title="Deep Red">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Profondo Rosso (1976)

//scegliamo un bel rosso scuro
final color PAPER = color(190, 0, 50);

/**
 * setup()
 * tutto quello che serve per prepararsi al disegno
 */ 
void setup() {
  
  //dimensione del foglio di lavoro (larghezza x altezza)  
  size(480, 640);
  
  //solo un singolo fotogramma
  noLoop();
}

/**
 * draw()
 * cosa dobbiamo disegnare sul foglio
 */
void draw() {
  
  //impostiamo lo sfondo 
  background(PAPER);
  
  //salviamo il risultato in un immagine su disco
  save("profondo-rosso.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
