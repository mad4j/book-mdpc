
final int COUNT = 8;
final float F = 1.0/COUNT;

size(512, 512);

scale(F*width);
strokeWeight(1*F);

background(240);
stroke(32);

line(1, 0, 1, COUNT);
line(2, 0, 2, COUNT);
line(5, 0, 5, COUNT);
line(7, 0, 7, COUNT);

line(0, 1, COUNT, 1);
line(0, 3, COUNT, 3);
line(0, 6, COUNT, 6);

fill(255, 25, 15);
rect(1, 1, 1, 2);

fill(255, 225, 20);
rect(1, 5, 1, 1);

fill(40, 15, 240);
rect(5, 1, 2, 2);

save("mondrian.png");