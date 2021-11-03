int xCorner=0;
int yCorner=0;
int lato=100;
int black=0;
size(500,500);
noStroke();
for(int i=0; i<5;i++){
  for(int j=0; j<5; j++){
    fill(black);
    rect(xCorner,yCorner,lato,lato);
    xCorner+=100;
    black+=7;
  }
  xCorner=0;
  yCorner+=100;
      black+=7;

}
