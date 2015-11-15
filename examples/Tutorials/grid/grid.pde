
final int COUNT = 8;

size(512, 512);

float delta = max(width, height)/COUNT;

background(255);
fill(0);

for (int i=0; i<COUNT; i++) {
  for (int j=0; j<COUNT; j++) {
    line(i*delta, 0, i*delta, height);
    line(0, j*delta, width, j*delta);
  }
}