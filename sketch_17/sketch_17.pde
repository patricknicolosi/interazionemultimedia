PImage image;
PImage ritaglio;
color c;
String colore;

void setup(){
  size(1200,800);
  background(0);
  image=loadImage("IMG.jpeg");
}

void draw(){
  background(0);
  image(image, 0, 0, 600, 800);
  ritaglio=get(0,0,600,400);
  
  getColor();
  fill(c);
  rect(600,0,600,350);
  
  fill(160);
  image(ritaglio,width/2,height/2);
}

void getColor(){
  c=get(mouseX,mouseY);
  colore="R:" + red(c) + "  G:" +green(c)+"  B:"+blue(c);
  fill(255);
  textSize(20);
  text(colore,610,380);
}
