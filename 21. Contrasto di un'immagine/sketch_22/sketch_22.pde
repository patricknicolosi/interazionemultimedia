PImage img;
PImage imgContrasto;
void setup(){
  size(1000,500);
  background(0);
  img=loadImage("lena.png");
  filter(GRAY);
  image(img,0,0);
  
  imgContrasto=equalizza(img);
  image(imgContrasto,500,0);
  
}

void draw(){}

float[] istogramma(PImage parametro){
  float[] valoriIstogramma=new float[256];
  PImage copia=parametro.copy();
  copia.loadPixels();
  //METODO STANDARD PER TROVARE L'ISTOGRAMMA DI UN'IMMAGINE --> trovo tutti i valori dell'istogramma dicendo che ogni valore di questo istogramma è unguale ad una componente in posizione i-esima dell'immagine aggiunta un'unità
  for(int i=0; i<copia.pixels.length; i++) valoriIstogramma[int(green(copia.pixels[i]))]++;
  return valoriIstogramma;
}

PImage equalizza(PImage parametro){
  PImage copia= parametro.copy();
  copia.loadPixels();
  float[] istogramma=istogramma(copia);
  //PER EQUALIZZARE UN ISTOGRAMMA ABBIAMO BISOGNO PRIMA DEL SUO CUMULATIVO
  for(int i=1; i<256; i++) istogramma[i]=istogramma[i]+istogramma[i-1];
  //APPLICO EQUALIZZAZIONE
  for(int i=0; i<copia.pixels.length; i++) copia.pixels[i]=color(255*istogramma[int(green(copia.pixels[i]))]/copia.pixels.length);
  copia.updatePixels();
  return copia;
}
