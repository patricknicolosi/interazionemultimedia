float x=350;
float x2=450;
float y=400;
int xCiambella=int(random(400));
int yCiambella=int(random(-90));
boolean inScreen=false;
Ciambella c;

class Ciambella{
  Ciambella(){
    fill(254,13,255);
    ellipse(xCiambella,yCiambella,80,80);
    fill(247,247,12);
    ellipse(xCiambella,yCiambella,50,50);
  }
}

void setup(){
  size(800,800);
  background(247,247,12);
}

void draw(){
  background(247,247,12);
  if(yCiambella<700){  
    x=map(xCiambella,0,width,340,360);
    x2=map(xCiambella,0,width,440,460);
    y=map(yCiambella,0,height,390,410);  
  }
  else{
    x=map(mouseX,0,width,340,360);
    x2=map(mouseX,0,width,440,460);
    y=map(mouseY,0,height,390,410); 
    if(yCiambella>2000) {
      xCiambella=int(random(400));
      yCiambella=int(random(-90));
    }
  }
  yCiambella+=3;
  fill(255);
  ellipse(width/2-50,height/2, 60,60);
  ellipse(width/2+50,height/2, 60,60);
  fill(0);
  ellipse(x,y,15,15);
  ellipse(x2,y,15,15);
  c=new Ciambella();
}
