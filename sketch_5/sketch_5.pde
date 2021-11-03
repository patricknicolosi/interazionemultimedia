int dimensione=50;
int xCentro=width/2-(20*3)-(50*3);
int yCentro=height/2;
size(1000,500);
background(0);
ellipseMode(CENTER);
fill(255);
for(int i=0; i<6;i++){
  ellipse(xCentro,height/2,dimensione,dimensione);
  fill(0);
  ellipse(xCentro+=10,yCentro-5,dimensione,dimensione);
  xCentro+=dimensione+20;
  yCentro-=3;
  fill(255);
}
