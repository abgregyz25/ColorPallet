int r, g, b = 255;
int imgSz = 16;

PImage pI;

pI = createImage(imgSz, imgSz, RGB);
pI.loadPixels();

for (int i = 0; i < imgSz; i++){
  r = 255;
  g = 0;
  for (int j = 0; j < imgSz ; j++){
    pI.pixels[ (pI.width * i) + j] = color(r,g,b); //(width * j) + i
    r -= imgSz;
    g += imgSz;
  }
  b -= imgSz;
  
}
pI.updatePixels();
image(pI,50,50);
pI.save("test.bmp");
