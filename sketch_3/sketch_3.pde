int lato=100;
int xCentro=width/2-50;
int yCentro=height/2-50;

size(300,300);
background(0);
rectMode(CENTER);
fill(255,255,255,100);
noStroke();
for(int i=0; i<10; i++){
  rect(xCentro,yCentro,lato,lato);
  xCentro+=10;
  yCentro+=10;
}
