int n=100; //NUMERO ONDE  
Onda[] onde= new Onda[n];

class Onda{
  int dim=0;
  void ondaCheSiAllarga(){
    strokeWeight(5);
    stroke(255);
    ellipseMode(CENTER);
    ellipse(width/2,height/2,dim,dim);
    dim+=2;
  }
  int getDim(){
    print(this.dim);
    return this.dim;
  }
  void setDim(int dim2){
    dim=dim2;
  }
}

void setup(){
  size(500,500);
  background(0);
  for(int i=0; i<n; i++) onde[i]=new Onda();
}

void draw(){
  noFill();
  background(0);
  onde[0].ondaCheSiAllarga();
  for(int i=1; i<n; i++){
    if(onde[i-1].getDim()>=100) onde[i].ondaCheSiAllarga();
  }
}
