class Personaje {

  boolean[] salvado= new boolean [3];
  PImage[] IM =new PImage[3];
  PImage[] IMA=new PImage[5];
  int x, y;
  PImage nube;
  Texto T;
  //CONSTRUCTOR
  Personaje() {   
    T= new Texto();
    salvado[0]=false;
    salvado[1]=false;
    salvado[2]=false;
    IM[0]=loadImage("abuelo.png");
    IM[1]=loadImage("bart1.png");
    IM[2]=loadImage("mojo1.png");

    IMA[0]=loadImage("Abraham_Simpson_2.png");
    IMA[1]=loadImage("Mojo.png");
    IMA[2]=loadImage("BartS.png");
    IMA[3]=loadImage("homer2.png");
    IMA[4]=loadImage("Lisatriste.png");
    nube=loadImage("nube0.png");
  }

  void dibujar (int index, float x, float y) {
    image(IM[index], x, y);
  }

  void dibujarPersonaje (int index, float x, float y) {
    image(IMA[index], x, y);
  }
  void salvar (int index, float nx, float ny, int n, float x, float y, int arreglo, int xp, int yp, int diam, int diam1) {
    pushStyle();
    if (salvado[n]==true) {
      image(nube, nx, ny);
      textFont(T.tipog1);
      fill(0);
      textSize(20);
      text(T.texto[arreglo], x, y, diam, diam1);
      image(IMA[index], xp, yp);
      popStyle();
    }
  }
}
