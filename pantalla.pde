class Pantalla {
  PImage []img=new PImage[16];

  Pantalla () {
    img[0]=loadImage("periodico.png");
    img[1]=loadImage("casa-simpson.jpg");
    img[2]=loadImage("CasaD.jpg");
    img[3]=loadImage("comedor.jpg");
    img[4]=loadImage("HabitBart.jpg");
    img[5]=loadImage("sofa.jpg");
    img[6]=loadImage("habita10.jpg");
    img[7]=loadImage("habitLisa.jpg");
    img[8]=loadImage("habit hm.jpg");
    img[9]=loadImage("todos.png");
    img[10]=loadImage("homero corre.png");
    img[11]=loadImage("nombre.png");
    img[12]=loadImage("grita.png");
    img[13]=loadImage("fue_0.png");
    img[14]=loadImage("th.jpg");
    img[15]=loadImage("15.png");
  }
  void dibujarFondo(PImage img) {
    image(img, 0, 0);
  }
  
  void dibujarImg (PImage img, int x, int y, int tam, int tam1) {
  image (img, x,y,tam,tam1);
  }
  
  void dibujarImg1 (PImage img, int x, int y) {
   image (img, x, y); 
  }
}
