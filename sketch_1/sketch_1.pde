int altezza=210;
int larghezza=210;
int centro=120;

size(1400,500);
noFill();
stroke(255,0,255);
for(int i=0; i<8; i++){
  ellipse(centro,height/2,altezza,larghezza);
  centro+=altezza+20;
  altezza-=20;
  larghezza-=20;
}

line(0,height/2,width/2,0);
