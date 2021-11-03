void setup(){
  background(255);
  size(600,600);
}

void draw(){
  background(255);
  translate(width/2, height/2);
  strokeWeight(8);
  fill(255);
  ellipse(0,0,400,400);
  fill(0);
  rotate(millis()*0.001);
  triangle(0, -190, -165, 100, +165, 100);

}
