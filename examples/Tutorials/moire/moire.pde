
size(512, 512);
translate(width/2.0, height/2.0);

background(255);

noFill();

stroke(0);
strokeWeight(2.0);

for (int i=0; i<100; i++) {
  ellipse(-50, 0, i*10, i*10);
  ellipse( 50, 0, i*10, i*10);
}

save("moire.png");