
/**
 * Profondo Rosso
 * Minimal Poster Snippet
 *
 * dal film
 * 'Profondo Rosso' di Dario Argento
 * Horror, 1975
 *
 * Daniele Olmisani <daniele.olmisani@gmail.com>
 * 2015, tutti i diritti riservati
 */

//scegliamo un bel rosso scuro
final color BLOOD_COLOR = color(190, 0, 50);

/**
 * setup()
 * tutto quello che serve per preparsi al disegno
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
  background(BLOOD_COLOR);
  
  //salviamo il risultato in un immagine su disco
  save("profondo-rosso.png");
}
