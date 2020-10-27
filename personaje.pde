class Personaje{

 boolean[] salvado= new boolean [3];
 PImage[] IM =new PImage[3];
 PImage[] IMA=new PImage[4];
 int x, y;
  Personaje(){
   
  salvado[0]=false;
  salvado[1]=false;
  salvado[2]=false;
   IM[0]=loadImage("Abraham_Simpson_2.png");
   IM[1]=loadImage("bart1.png");
   IM[2]=loadImage("mojo1.png");
   
   IMA[0]=loadImage("nube1.png");
   IMA[0]=loadImage("abuelo.png");
   IMA[0]=loadImage("Mojo.png");
   IMA[0]=loadImage("BartS.png");
  }
  
  //void dibujar(PImage IM,x,y){
  //  image(img,x,y);
  //}
  //void salvar(){
  // pushStyle();
   //if(salvado==true){
   //     image(IMA,X,Y);
   //     T.textosC(int tam, int c, String todostexto, int x, int y);
   //   image(IMA,x,y);
   //   popStyle();  
    }
  
  //}
  
  
