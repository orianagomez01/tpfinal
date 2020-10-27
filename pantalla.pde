class Pantalla {
  //JPG
  PImage []imgc=new PImage[9];
  //PNG
  PImage [] img = new PImage [7];

  Pantalla () {

    //INICIALIZAR FOTOS JPG
    for (int i = 0; i < imgc.length; i++) {
      imgc[i]= loadImage ("casa"+i+".jpg");

      //INICIALIZAR FOTOS PNG
      for (int j = 0; j < img.length; j++) {
        img[j]= loadImage ("pantalla"+j+".png");
      }
    }
  }
  //CASA JPG
  void dibujarFondo(int i) {
    image(img[i], width, height);
  }
  //IMAGENES DE PANTALLA
  void pantalla0() {
    image(img[0], 550, 0, 245, 531);
    image(img[1], 0, 0);
  }
  void pantalla1() {
   image (img[2],350,235); 
  }
  

  //PNG'S
  //PANTALLA0img[10]=loadImage("homero corre.png");
  //PANTALLA1img[11]=loadImage("nombre.png");
  //grita = pantalla2
  //homer2 = pantalla3
  //PANTALLA4img[0]=loadImage("periodico.png");
  //lisatriste= PANTALLA5
  //PANTALLA6img[9]=loadImage("todos.png ");
  //15= PANTALLA7


  //CASA0img[1]=loadImage("casa-simpson.jpg ");
  //CASA1img[2]=loadImage("CasaD.jpg");
  //CASA2img[3]=loadImage("comedor.jpg");
  //CASA3=loadImage("sofa.jpg ");
  //CASA4img[4]=loadImage("HabitBart.jpg ");
  //CASA5img[6]=loadImage("habita10.jpg ");
  //CASA6img[7]=loadImage("habitLisa.jpg ");
  //CASA7img[8]=loadImage("habit hm.jpg ");
  //th = CASA8
}
