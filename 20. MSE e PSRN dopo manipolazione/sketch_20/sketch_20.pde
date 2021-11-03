PImage img;
PImage imgZoom;
PImage negativo;
void setup(){
  size(1600,535); //800 535
  
  img=loadImage("image.jpg");
  image(img,0,0);
  
  imgZoom=img.copy();
  imgZoom.resize(500,200);
  imgZoom.resize(800,535);
  image(imgZoom,800,0);
  
  println("MSE con se stessa: "+MSE(img,img));
  println("PSRN con se stessa: "+PSRN(img,img));
  println("MSE con se stessa dopo lo zoom: "+MSE(img,imgZoom));
  println("PSRN con se stessa dopo lo zoom: "+PSRN(img,imgZoom));
  
}

void draw(){
}

float MSE(PImage parametro1, PImage parametro2){
  float mse=0;
  parametro1.loadPixels();
  parametro2.loadPixels();
  for(int i=0; i<parametro1.pixels.length; i++) mse+=pow(blue(parametro1.pixels[i])-blue(parametro2.pixels[i]),2);
  mse=mse/parametro1.pixels.length;
  return mse;
}

float PSRN(PImage parametro1, PImage parametro2){
  float psrn;
  psrn=-10*(log((MSE(parametro1, parametro2))/pow(255,2)));
  return psrn;
}
