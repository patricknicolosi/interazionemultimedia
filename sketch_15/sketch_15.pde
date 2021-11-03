float x=0;
float y;
float y2;

void setup(){
  size(800,800);
  background(0);
}

void draw(){
  y=400-random(20);
  y2=400+random(100);
  fill(0);
  rect(x,height/2-100,100,200);
  delay(100);
  stroke(255);
  noFill();
  beginShape();
  vertex(x, height/2);
  vertex(x+=30, height/2);
  vertex(x+=5, y);
  vertex(x+=5, y2);
  vertex(x+=5, height/2);
  vertex(x+=5, height/2);
  endShape();
  noStroke();
  if(x>width) x=0;
  delay(50);
}
