int xCentro=0;
int yCentro=0;
int lato=25;
boolean controllo= false;

size(500,500);
for(int i=0; i<20; i++){
  for(int j=0; j<20; j++){    
    if(controllo==false){
      fill(0);
      controllo=true;
    }
    else{
     fill(255);
     controllo=false;
    }
    rect(xCentro,yCentro,lato,lato);
    xCentro+=25;
  }
  xCentro=0;
  if(controllo==false) controllo=true;
  else controllo=false;
  yCentro+=25;
}

xCentro=0;
yCentro=0;
for(int i=0; i<20; i++){
  for(int j=0; j<20; j++){    
    stroke(255,0,0);
    line(xCentro,yCentro,xCentro+25,yCentro+25);
    line(xCentro+25,yCentro,yCentro,xCentro+25);
    xCentro+=25;
  }
  xCentro=0;
  yCentro+=25;
}
