//Operatori locali - Convoluzione
//IMPORTANTISSIMO! Ricordiamo che PImage usa le coordinate invertite rispetto alle normali matrici
//Cioè I.get(i,j) è uguale a I[j][i]. 
//Dobbiamo quindi usare le coppie I.get(i,j) e I[j][i] o I.get(j,i) e I[i][j] per riferirci alla stessa locazione.
PImage Im, In3, In5, Il, Is, IsX;
//creo i kernel
float n3=1/9.0;
float[][] nbox3={{n3, n3, n3},
                 {n3, n3, n3},    
                 {n3, n3, n3}};

float n5=1.0/25;              
float[][] nbox5={{n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5},
                 {n5,n5,n5,n5,n5}};
                 
float[][] lapl={ {-1,0,-1},
                 {0,4,0},
                 {-1,0,-1}};
                 
float[][] sobX={ {-1,-2,-1},
                 {0,0,0},
                 {1,2,1}};

float[][] sharp={{-1,0,-1},
                 {0,5,0},
                 {-1,0,-1}};
                 
float[][] random={{2,-2,-3},
                 {5,-1,0.5},
                 {-1,4,2}};
           
void setup()
{
  size(1024,1024);
  Im=loadImage("lena.png");
  Im.filter(GRAY); 
  
  //convoluzione su matrici e conversione in PImage
  In3=converti(convoluzione(Im,nbox3));
  In5=converti(convoluzione(Im,nbox5));
  Il=converti(convoluzione(Im,lapl));
  Is=converti(convoluzione(Im,sharp));
  IsX=converti(convoluzione(Im,sobX));
  
  image(Im,0,0);
  image(In5,512,0);
  image(IsX,0,512);
  image(Is,512,512);
  
  

}

void draw()
{
}

float[][] convoluzione(PImage parametro, float[][] kernel) //serve ad applicare convoluzione ad una matrice
{
  float[][] matrice=new float[parametro.height][parametro.width]; //creamo una matrice di dimensioni uguali a quelle dell'imamgine che abbiamo passato come parametro
  
  int dimKernel1=kernel[0].length; //stabiliamo la dimensione 1 del kernel
  int dimKernel2=kernel.length; //stabiliamo la dimensione 2 del kernel
  PImage tmp;
  float res;
  
  for(int x=0; x<parametro.width; x++) //ciclicamo ogni singolo pixel dell immagine
  {
    for(int y=0; y<parametro.height;y++) //cicliamo ogni singolo pixel dell immagine
    {
      
      tmp=parametro.get(x-dimKernel1/2, y-dimKernel2/2, dimKernel2, dimKernel1); //variabile temporanea per estrapolare dal parametro inserito un immagine di dimensioni pari a quelle del kernel di convoluzione a cui applicare il kernel appunto
      
      res=0;
      
      for(int p=0; p<dimKernel2; p++)
      {
        for(int q=0; q<dimKernel1;q++)
        {
          res=res+green(tmp.get(p,q))*kernel[q][p];//applico la convoluzione
        }
      }
      
      matrice[y][x]=res;  // stabilisco il valore del pixel una volta applicata convoluzione 
      
    }
  }
  
  return matrice;
}

PImage converti(float[][] parametro) //ho applicato convoluzione, ma ad una matrice !!! convertiamo la matrice ottenuta in un'immagine
{
  PImage convertita=createImage(parametro[0].length,parametro.length,RGB);
  
  float res=0;
  for(int x=0; x<convertita.width;x++)
  {
    for(int y=0; y<convertita.height;y++)
    {
      res=constrain(abs(parametro[y][x]),0,255); //prendo il valore assoluto di ogni valore della matrice e lo "costringo" ad essere un valore compreso tra 0 e 255
      convertita.set(x,y,color(res)); //setto il nuovo valore dell'immagine
    }
  }
  
  return convertita;
}
