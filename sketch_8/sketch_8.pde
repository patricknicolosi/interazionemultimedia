int x=width/2;
int y=height/2;

//bocca aperta verso destra
float coefficiente1=QUARTER_PI;
float coefficiente2=PI+3*QUARTER_PI;

//bocca chiusa verso destra
int coefficiente3=0;
float coefficiente4=2*PI;


//bocca aperta verso sinistra
float coefficiente5=PI+QUARTER_PI;
float coefficiente6=2*PI+3*QUARTER_PI;

//bocca chiusa verso sinistra
float coefficiente7=PI;
float coefficiente8=2*PI+4*QUARTER_PI;

//attuale
float coefficienteAttuale1=coefficiente1;
float coefficienteAttuale2=coefficiente2;

boolean marginDx=false;


void setup(){
  size(1000,200);
  background(0);
  frameRate(8);
}

void draw(){
  background(0);
  fill(255,0,0);
  if(marginDx==false){
    //verso destra
    background(0);
    if(coefficienteAttuale1==coefficiente1){
      coefficienteAttuale1=coefficiente3;
      coefficienteAttuale2=coefficiente4;
      fill(229,219,7);
      arc(x+=10, 50, 80, 80, coefficienteAttuale1, coefficienteAttuale2, PIE);
      fill(0);
      ellipse(x+=10, 20, 10,10);
    }
    else{
      coefficienteAttuale1=coefficiente1;
      coefficienteAttuale2=coefficiente2;
      fill(229,219,7);
      arc(x+=10, 50, 80, 80, coefficienteAttuale1, coefficienteAttuale2, PIE);
      fill(0);
      ellipse(x+=10, 20, 10,10);
    }
    if(x>=width-35){
      marginDx=true;
    }
  }
  else{
    background(0);
    if(coefficienteAttuale1==coefficiente5){
      coefficienteAttuale1=coefficiente7;
      coefficienteAttuale2=coefficiente8;
      fill(229,219,7);
      arc(x-=10, 50, 80, 80, coefficienteAttuale1, coefficienteAttuale2, PIE);
      fill(0);
      ellipse(x-=10, 20, 10,10);
    }
    else{
      coefficienteAttuale1=coefficiente5;
      coefficienteAttuale2=coefficiente6;
      fill(229,219,7);
      arc(x-=10, 50, 80, 80, coefficienteAttuale1, coefficienteAttuale2, PIE);
      fill(0);
      ellipse(x-=10, 20, 10,10);
    }
    if(x<=35){
      marginDx=false;
    }
  }
}
