class Fuego {
  float x, y, vel;
  PImage[] fuego= new PImage [3];
  PImage [] fuego0=new PImage[3];
  PImage [] flama= new PImage [3];
  
  Fuego() {
   
    cargarImagenesFlama ();

    for ( int i = 0; i < 3; i++) {
      fuego[i]=loadImage("Fueg_"+i+".png");
    }
    for (int i =0; i < 3; i++) {
      fuego0[i]=loadImage("fue_"+i+".png");
    }
  }
  //MÉTODOS (FUNCIONES)

  void dibujar (float x, float y, float tam, float tam1) {
    image (fuego[frameCount %3], x, y, tam, tam1);
  }
  void dibujar1 (float x, float y) {
    image (fuego0[frameCount %3], x, y);
  }

  void dibujarFlama (int index, float x, float y) {
    image (flama[index], x, y);
  }

  void dibujarFlama1 (int index, float x, float y, float tam, float tam1) {
    image (flama[index], x, y, tam, tam1);
  }
  void cargarImagenesFlama () {
    flama[0]= loadImage ("fuego.png");
    flama[1]= loadImage ("flama2.png");
    flama[2]= loadImage ("ff2.png");
  }
}
