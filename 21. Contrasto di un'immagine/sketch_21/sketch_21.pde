PImage img;
PImage imgContrasto;

void setup(){
  size(1000,500);
  img=loadImage("lena.png");
  img.filter(GRAY);
  image(img,0,0);
  
  imgContrasto=contrasto(img);
  image(imgContrasto,500,0);
}

void draw(){}

PImage contrasto(PImage parametro){
  PImage copia;
  float minimo=255;
  float massimo=0;
  copia=parametro.copy();
  copia.loadPixels();
  for(int i=0; i<copia.pixels.length; i++){
    if(red(copia.pixels[i])<minimo) minimo=red(copia.pixels[i]);
    if(red(copia.pixels[i])>massimo) massimo=red(copia.pixels[i]);
  }
  copia.updatePixels();
  for(int i=0; i<copia.pixels.length; i++){
    copia.pixels[i]=color(255*(green(copia.pixels[i])-minimo)/(massimo-minimo));
  }
  copia.updatePixels();
  return copia;
}
