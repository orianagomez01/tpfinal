class Pantalla {
  float x, y, posx;
  float cx, lx;
  float vel=8;
  PImage[]quemado=new PImage[2];
  PImage []img=new PImage[23];
  PImage[]gano=new PImage[17];

  Pantalla () {
    y=340;
    x=0;
    cx=1000;
    lx=1450;
    posx=0;
    cargarImagenes ();
 
    for ( int i = 0; i <2; i++) {
      quemado[i]=loadImage("q_"+i+".png");
    }

    for ( int i = 0; i <17; i++) {
      gano[i]=loadImage("g_"+i+".png");
    }
  }

  // METODOS (funciones)
  void actualizar() {
    lx=lx-vel;
    if (lx<-500) {
      lx=1350;
      println("lx", lx);
    }
    x= x-vel;
    if (x <-400) {
      x=0;
    }

    cx=cx-vel;
    if (cx<-500) {
      cx=950;
    }
  }
  void dibujarComedor() {
    background(255, 128, 192);  
    rect(0, 450, 800, 600);
    fill(0);
    image(img[19], posx, 0);
    posx=posx-6;
  }
  void dibujar() {
    image(img[20], x, 340);
    image(img[21], cx, 100);
    image(img[22], lx, 200, 198, 118);
  }

  void dibujarFondo(int index) {
    image(img[index], 0, 0, width, height);
  }
  
  void dibujarFondo1 (int index) {
    image(img[index], 0, 0);
  }
  void dibujarImg (int index, float x, float y, float tam, float tam1) {
    image (img[index], x, y, tam, tam1);
  }

  void dibujarImg1 (int index, float x, float y) {
    image (img[index], x, y);
  }

  void dibujarQuemado (float x, float y, float tam, float tam1) {
    image (quemado[frameCount %2], x, y, tam, tam1);
  }

  void dibujarGano (float x, float y, float tam, float tam1) {
    image (gano[frameCount%17], x, y, tam, tam1);
  }

  void dibujarRect (float x, float y, float tam, float tam1) {
    noStroke ();
    fill(100, 100, 255);
    rect(x, y, tam, tam1);
  }

  void dibujarEllipse (float x, float y, float tam, float tam1) {
    fill(0);
    ellipse(x, y, tam, tam1);
  }

  void cargarImagenes () {
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
    img[16]=loadImage("g.jpg");
    img[17]=loadImage("win.png");
    img[18]=loadImage("casa.png");
    img[19]=loadImage("comedor.jpg");
    img[20]=loadImage("CH.png");
    img[21]=loadImage("cuadro.jpg");
    img[22]=loadImage("lib.png");
  }
}
