// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2010

// Poltergeist (1982)


final color PAPER = color(0);
final color INK = color(255);

final float TV_RATIO = 4.0 / 3.0;
final float TV_HEIGHT = 0.6;
final float TV_WIDTH = TV_HEIGHT * TV_RATIO;
final float TV_CORNER = 0.3 * TV_HEIGHT;
final float TV_RESOLUTION = 2.5;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  background(PAPER);
  
  PGraphics m = createGraphics(width, height);
  PGraphics s = createGraphics(width, height);
  
  m.beginDraw();
  
  m.translate(0.5*width, 0.5*height);
  m.scale(S);
   
  m.background(PAPER);
  m.fill(INK);
  m.noStroke();
  
  m.rectMode(CENTER);
  m.rect(0, 0, TV_WIDTH, TV_HEIGHT, TV_CORNER);
 
  m.endDraw();
  
  s.beginDraw();
  
  s.noStroke();
  for (float x=0; x<width; x+=TV_RESOLUTION) {
    for (float y=0; y<height; y+=TV_RESOLUTION) {
      s.fill(random(256));
      s.rect(x, y, TV_RESOLUTION, TV_RESOLUTION);  
    }
  }
  
  s.endDraw();
  
  s.mask(m);
  image(s, 0, 0);
  
  save("poltergeist.png");
}
