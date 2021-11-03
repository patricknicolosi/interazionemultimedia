PImage img;
PImage imgNegativo;
PImage imgScura;
PImage imgLog;

void setup(){
  size(1600,800);
  img=loadImage("image.jpg");

  imgLog=logaritmo(img);
  image(imgLog, 0,0);
  
  imgNegativo=negativo(img);
  image(imgNegativo, 0,400);
  
  imgScura=scuro(img);
  image(imgScura,800,0);
  
  image(img,800,400);
}

PImage negativo(PImage immagineComeParametro){
  PImage copia=immagineComeParametro.copy();
  copia.loadPixels();
  float r,g,b;
  for(int i=0; i<copia.pixels.length; i++)
  {
    r=255-red(copia.pixels[i]);
    g=255-green(copia.pixels[i]);
    b=255-blue(copia.pixels[i]);
    copia.pixels[i]=color(r,g,b);
  }

  copia.updatePixels();
  return copia;
}

PImage logaritmo(PImage immagineComeParametro){
  PImage copia=immagineComeParametro.copy();
  copia.loadPixels();
  float r,g,b;
  float c=255/log(256);
  for(int i=0; i<copia.pixels.length; i++)
  {
    r=c*log(1+red(copia.pixels[i]));
    g=c*log(1+green(copia.pixels[i]));
    b=c*log(1+blue(copia.pixels[i]));
    copia.pixels[i]=color(r,g,b);
  }

  copia.updatePixels();
  return copia;
}

























PImage scuro(PImage parametroDaInserire){
  PImage copia;
  copia=parametroDaInserire.copy();
  
  copia.loadPixels();
  float r,g,b;
  for(int i=0; i<copia.pixels.length; i++){
    r=red(copia.pixels[i])/2;
    g=green(copia.pixels[i])/2;
    b=blue(copia.pixels[i])/2;
    copia.pixels[i]=color(r,g,b);
  }
  
  copia.updatePixels();
  return copia;
}
