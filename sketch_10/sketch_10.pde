PImage img;

int n=40; //numero gocce
GocciaPiccola[] goccePiccole= new GocciaPiccola[n];
GocciaGrande[] gocceGrandi= new GocciaGrande[n];

Astronave a1=new Astronave();//astronva
int x1=400; // x astronave
int y1=400; // y astronave

int dim=10;
int y2=y1; 

class Astronave{
  void drawAstronave(){
   // fill(195,194,214);
    //image(img, x1, y1, 80, 80);
      image(img, x1, y1,150,150);

  }
  void moveAstronave(){
    if (keyCode == UP && keyPressed==true) {
      y1-=10;
      y2=y1;
    }
    if (keyCode == DOWN && keyPressed==true) {
      y1+=10;
      y2=y1;
    }
    if (keyCode == LEFT && keyPressed==true) {
      x1-=10;
    }
    if (keyCode == RIGHT && keyPressed==true) {
      x1+=10;
    }
  }
}
class GocciaPiccola{
  int x,y;
  GocciaPiccola(){
    x=int(random(0,800));
    y=int(random(-1000,-10));
  };
  void pioggia(){
    noStroke();
    fill(110,107,152);
    rect(x,y,1,50);
    y+=10;
    if(y>height){
      x=int(random(0,820));
      y=int(random(-1500,-10));
    }
  }
}
class GocciaGrande{
  int x,y;
  GocciaGrande(){
    x=int(random(0,800));
    y=int(random(-1000,-10));
  };
  void pioggia(){
    noStroke();
    fill(255);
    rect(x,y,1,100);
    y+=10;
    if(keyCode == ALT && keyPressed==true){
      y+=30;
    }
    if(y>height){
      x=int(random(0,820));
      y=int(random(-1500,-10));
    }
  }
}

void setup(){
  size(800,800);
  background(52,50,85);
  img = loadImage("image.png");  // Load the image into the program  
  for(int i=0; i<n; i++){
    goccePiccole[i]=new GocciaPiccola();
    gocceGrandi[i]=new GocciaGrande();
  }
}

void draw(){
  background(52,50,85);
  for(int i=0; i<n; i++){
    if(keyCode == ALT && keyPressed==true){
       gocceGrandi[i].pioggia();
    }
    else{
      goccePiccole[i].pioggia();
      gocceGrandi[i].pioggia();
    }
  }
  a1.drawAstronave();
  a1.moveAstronave();
}
