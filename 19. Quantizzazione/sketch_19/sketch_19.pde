PImage img, img2;
int k=2;
void setup(){
  size(1600,500);
  img=loadImage("image.jpg");
  image(img,0,0);
  
  img2=quantizzazione(img,k);
  image(img2,800,0);
 
}

void draw(){}

PImage quantizzazione(PImage parametro, int k){
  PImage copia=parametro.copy();
  copia.loadPixels();
  int r=0;
  for(int i=0; i<copia.pixels.length; i++){
    //applico la formula 
    r=floor((blue(copia.pixels[i])*k)/256);
    //riporto nel range del visibile
    r= int((float(r)/(k-1))*255);
    copia.pixels[i]=color(r);
  }
  copia.updatePixels();
  return copia;
}

void keyPressed()
{
  if((key=='+')&&(k<256))
  {
    k++;
    img2=quantizzazione(img,k);
    image(img2,800,0);
  }
  
  if((key=='-')&&(k>2))
  {
    k--;
    img2=quantizzazione(img,k);
    image(img2,800,0);
  }
     
}
