class Aventura {
  String estado;
  int delay;
  int tam;
  Fuego F;
  Pantalla P;
  Texto T;
  Personaje Pr;
  Aventura() {
    colorMode(RGB);
    background(100, 100, 255);
    frameRate(10);
    F =new Fuego();
    P= new Pantalla();
    T=new Texto();
    Pr=new Personaje();
    estado="presentacion";
  }
  void dibujar () {
    if (estado.equals("presentacion")) {
      background(100, 100, 255);
      F.dibujar(0, 400, 400, 200);
      P.pantalla0();
      T.dibujarTextos(25, 255, T.todostexto[0], 200, 200, 300, 400);
      T.textosC(20, 0, T.todostexto[1], 400, 550);
    } 
    else if (estado.equals("casaincendiada")) {
      //AGREGAR LO DEL DELAY
      background(100, 100, 255);
      P.dibujarFondo (0);
      F.dibujar(0, 50, 200, 100);
      F.dibujar (300, 300, 200, 100);
      F.dibujar (50, 280, 200, 100);
      F.dibujar (500, 10, 200, 100);
      F.dibujar1 (500, 170);
      T.dibujarTextos(25, 255, T.todostexto[2], 20, 450, 300, 550);
      T.textosC(20, 0, T.todostexto[3], 0, 570);
      P.pantalla1();
    } 
    else if (estado.equals("direcciones")) {
    } else if (estado.equals("comedor")) {
    } else if (estado.equals("sala")) {
    } else if (estado.equals("escaleras")) {
    } else if (estado.equals("baño")) {
    } else if (estado.equals("habit1")) {
    } else if (estado.equals("habit2")) {
    } else if (estado.equals("habit3")) {
    } else if (estado.equals("final1")) {
    } else if (estado.equals("final2")) {
    } else if (estado.equals("creditos")) {
    }
  }
  void teclas() {
    //cambio de : (presentacion) >> (casaincendiada)------------------------------
    if (keyCode==ENTER && estado.equals("presentacion")) {
      estado = "casaincendiada";
    }
    //cambio de : (casaincendiada) >> (direcciones)-------------------------------
    if (keyCode==BACKSPACE && estado.equals("casaincendiada")&& delay>5) {
      estado="direcciones";
    }
    //cambio de :(final1) >> (creditos)--------------------------------------------
    if (keyCode==ENTER && estado.equals("final1")) {
      estado="creditos";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
    }
    //cambio de :(final2) >> (creditos)--------------------------------------------
    if (keyCode==BACKSPACE && estado.equals("final2")) {
      estado="creditos";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      delay=0;
    } 
    //REINICIO ---cambio de :(creditos) >> (presentacion)--------------------------
    if (key==' '&& estado.equals("creditos")&& delay>5) {
      estado= "presentacion";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
    }
  }
  void botones() {
  }
}
