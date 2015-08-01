
<<<<<<< HEAD
final float S = 150;
final float Q = 200;

size(512, 512);

translate(width/2.0, height/2.0);

beginShape();
for (int i = 0; i <= 360; i++) {
  float a = (1.25*S)-abs(cos(radians(i*1.5-Q))) * abs(cos(radians(i*1.5+Q)) * S);
  float x = a * sin(radians(i));
  float y = a * cos(radians(i));
  vertex(x, y);
}
endShape();

save("flowers.png");
=======
void setup() {
  size(512, 512);
  noLoop();
}

void draw() {

  translate(width/2.0, height/2.0);

  float s = 150;
  float q = 200;
  beginShape();
  for (int i = 0; i <= 360; i++) {
    float a = (s+s/4)-abs(cos(radians(i*1.5-q))) * abs(cos(radians(i*1.5+q)) * s);
    float x = a * sin(radians(i));
    float y = a * cos(radians(i));
    vertex(x, y);
  }
  endShape();

  save("flowers.png");
}

>>>>>>> origin/master
