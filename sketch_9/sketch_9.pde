int dimEllipse1=20;
int dimEllipse2=20;
int x=0; 


void setup(){
  size (600,600);
  background(80);
  fill(0);
  noStroke();
}

void draw(){
  background(80);
  onda();
  rect(300,0,20,180);
  rect(300,200,20,180);
  rect(300,400,20,200);
}


void onda(){
  if(x<315){
    fill(255);
    rect(x,0,5,height);
    x+=5;
    fill(0);
  }
  else{
    noFill();
    stroke(255);
    ellipseMode(CENTER);
    strokeWeight(5);
    arc(320,190,dimEllipse1,dimEllipse2,PI+2*QUARTER_PI,TWO_PI+2*QUARTER_PI,OPEN);
    arc(320,390,dimEllipse1,dimEllipse2,PI+2*QUARTER_PI,TWO_PI+2*QUARTER_PI,OPEN);
    dimEllipse1+=5;
    dimEllipse2+=5;
    fill(0);
    noStroke();
  }
}
