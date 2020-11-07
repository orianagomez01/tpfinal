class Personaje{

 boolean[] salvado= new boolean [3];
 PImage[] IM =new PImage[3];
 PImage[] IMA=new PImage[5];
 int x, y;
 PImage nube;
 Texto T;
  Personaje(){
    nube=loadImage("nube1.png");
   T= new Texto();
  salvado[0]=false;
  salvado[1]=false;
  salvado[2]=false;
   IM[0]=loadImage("Abraham_Simpson_2.png");
   IM[1]=loadImage("bart1.png");
   IM[2]=loadImage("mojo1.png");
   
   IMA[0]=loadImage("abuelo.png");
   IMA[1]=loadImage("Mojo.png");
   IMA[2]=loadImage("BartS.png");
   IMA[3]=loadImage("homer2.png");
   IMA[4]=loadImage("Lisatriste.png");
  }
  
  void dibujar (PImage IM,float x, float y){
    image(IM,x,y);
  }
  
  void dibujarPersonaje (PImage IMA, float x, float y) {
   image(IMA,x,y); 
  }
  void salvar(PImage IM,float nx,float ny,boolean salvado,float x,float y,String todostexto,int xp,int yp,int diam,int diam1){
   pushStyle();
   if(salvado==true){
   image(nube,nx,ny);
   textFont(T.tipog1);
   fill(0);
   textSize(20);
   text(todostexto,x,y,diam,diam1);
   image(IM,xp,yp);
   popStyle();  
  }
  }
}
