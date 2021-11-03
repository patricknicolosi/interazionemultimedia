float x=0;
float y=random(800);

void setup(){
  size(800,800);
  background(255);
}

void draw(){
  if(x>=width){
    stroke(255,0,0);
    strokeWeight(5);
    line(x-100,y,x,y);
    rectMode(CENTER);
    fill(255,255,255,200);
    rect(width/2,height/2,width+10,height+10);
    x=0;
    y=random(800);
    strokeWeight(1);
  }
  stroke(0);
  strokeWeight(1);
  noFill();
  beginShape();
  vertex(x,y);
  if(y>=height/2) vertex(x+=30, y-=random(100));
  else vertex(x+=30, y+=random(100));
  endShape();
  delay(100);
}
