// Making Movies
// Daniele Olmisani, 2015

// Intertellar

final color PAPER = color(255, 228, 181);
final color INK1 = color(127);
final color INK2 = color(64);

void setup() {
  size(480, 640, OPENGL);
  smooth(8);
  noLoop();
}

void draw() {

  float fov = PI/3.0;
  float camZ = (height/2.0) / tan(fov/2.0); 
  float aspect =  float(width)/float(height);
  perspective(fov, aspect, camZ/2.0, camZ*2.0); 

  translate(width/2.0, height/2.0, 0);
  rotateX(-PI/6); 
  rotateY(-PI/2.5);

  background(PAPER);
  lights();

  fill(INK1);
  stroke(INK2);
  strokeWeight(2.0);

  rotateZ(-PI/16);
  box(50, 300, 80); 

  translate(0, 0, 60);
  rotateZ(-PI/6);
  box(50, 300, 50);

  translate(0, 0, -120);
  rotateZ(PI/5);
  box(50, 300, 50); 

  save("intersterllar.png");
}

