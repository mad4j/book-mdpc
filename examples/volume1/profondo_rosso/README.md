# zorro (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="profondo-rosso.png"  width="360px" title="zorro">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Profondo Rosso

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
