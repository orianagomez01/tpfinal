class Fuego {
  float x, y;
  PImage[] fuego= new PImage [3];
  PImage [] fuego0=new PImage[3];

  Fuego() {
    for ( int i = 0; i < 3; i++) {
      fuego[i]=loadImage("Fueg_"+i+".png");
    }
    for (int i =0; i < 3; i++) {
      fuego0[i]=loadImage("fue_"+i+".png");
    }
  }
  void dibujar ( float x, float y, float tam, float tam1) {
    image (fuego[frameCount %3], x, y,tam, tam1);
  }
  void dibujar1 (float x, float y) {
    image (fuego0[frameCount %3], x, y);
  }
}
