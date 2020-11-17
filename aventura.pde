class Aventura {
  Juego juego;
  String estado;
  int delay;
  Fuego F;
  //la clase Fondo del juego es pantalla en la aventura
  Pantalla P;
  Texto T;
  Personaje Pr;
  Boton B;
  Bart bart;
  Homero H;
  Canon C;
  color amarillo=color (220, 214, 41);

  Aventura() {
    colorMode(RGB);
    F =new Fuego();
    P= new Pantalla();
    T= new Texto();
    Pr=new Personaje();
    B=new Boton();
    juego = new Juego();
    H= new Homero();
    bart= new Bart();
    C=new Canon();
    estado="presentacion";
  }
  void dibujar () {
    if (estado.equals("presentacion")) {
      background (100, 100, 255);
      P.dibujarImg (10, width/1.5, 0, width/3.3, height/1.2);
      P.dibujarImg1 (11, 0, 0);
      F.dibujar(0, height/1.5, width/2, height/3);
      T.dibujarTextos(25, 255, 0, width/4, height/3, width/2.6, height/1.5);
      T.textosC(20, 0, 1, width/2, height/1.1);
    } else if (estado.equals("casaincendiada")) {
      P.dibujarFondo(1);
      F.dibujar(0, height/12, width/4, height/6);
      F.dibujar (width/2.6, height/1.8, width/4, height/6);
      F.dibujar (width/16, height/1.8, width/4, height/6);
      F.dibujar (width/1.7, height*0.075, width/4, height/6);
      P.dibujarRect (width-width, height/1.4, width, height);
      P.dibujarImg1 (12, width/2.3, height/2.5);
      T.dibujarTextos(25, 255, 2, width/40, height/1.3, width/2.6, height/1.1);
      T.textosC(20, 0, 3, width/40, height-20);
    } else if (estado.equals("direcciones")) {
      delay=delay+1; 
      P.dibujarFondo(2);
      F.dibujarFlama (1, width-width, height/2);
      F.dibujar(width*0.020, height/1.5, width/4, height/6);
      F.dibujar(width/1.7, height/7, width/8, height/12);
      //FUEGO SIN MOVIMIENTO
      P.dibujarImg1(13, width/3.5, height/2.1);
      //BOTONES DE FLECHAS
      B.dibujar(0, width/1.6, height/3);
      B.dibujar(1, width-width+height, height/1.6);
      B.dibujar(2, width/8, height/1.6);
      //CUADRADO DE TEXTO
      P.dibujarRect (width-width, height/1.2, width, height);
      P.dibujarEllipse (width/1.9, height/1.1, width*0.075, height/9.3);
      T.dibujarTextos(25, 255, 4, width/3.9, height/1.6, width/2, height);
      T.textosC(20, 0, 5, width*0.012, height/1.1+15);
      B.dibujarFlecha(0, width/2.1+18, height*0.86, width/16, height*0.10);
      //REINICIAR EL JUEGO
      juego.jugar=false;
    } //-------------JUEGO-----------
    else if (estado.equals("comedor")) {
      juego.play();
      H.dibujar();
      juego.reset();
      juego.jugar=true;
      if (juego.elalto==true) {
        juego.teclas();
        H.teclas();
      } else if (juego.elalto==false) {
        H.sueltoteclas();
      }
      juego.perderJuego(this);
      juego.ganarJuego(this);
    } else if (estado.equals("sala")) {
      background(100, 100, 255);
      P.dibujarFondo(5);
      F.dibujarFlama1 (2, 0, 0, width, height/1.2-20);
      //BOTONES DE SI O NO
      B.dibujarBotones (width/2+10, height/2+10, width/13.2, height/10);
      B.dibujarBotones (width/2.3-7, height/2+10, width/13.2, height/10);
      //CUADRADO DE TEXTO
      P.dibujarRect (width-width, height/1.3, width, height);
      Pr.dibujarPersonaje(3, width/5.3, height/1.3-20);
      T.textosC(25, 255, 9, width/2.3, height/1.2);
      T.textosC(50, 0, 10, width/4, height/2); 
      T.textosC(40, 0, 11, width/1.9, height/1.7);
      T.textosC(40, 0, 12, width/2.3, height/1.7);
    } else if (estado.equals("escaleras")) {
      delay=delay+1;
      background(100, 100, 255);
      P.dibujarFondo(6);
      //BOTONES DE FLECHAS
      B.dibujar (4, width*0.51, height/2);
      B.dibujar (5, width*0.32, height/2);
      B.dibujar (5, width*0.26, height/1.7+8);
      B.dibujar (3, width/2.4, height-height+30);
      B.dibujarFlecha (3, width/1.1-22, height/5-5, width/6, height/5+10);
      B.dibujarFlecha (4, width/1.3-15, height/1.1-20, width/10, height/12);
      //FUEGO CON MOVIMIENTO
      F.dibujarFlama (1, width/1.8-6, height/2);
      F.dibujarFlama1 (1, width/4-10, height/2, width/8, height/6.7);
      //CUADRADO DE TEXTO
      P.dibujarEllipse (width/1.2-26, height/1.2+5, width/10, height/7.5);
      P.dibujarRect (width-width, height/1.3, width, height);
      T.textosC(25, 255, 13, width/8, height/1.2);  
      T.textosC(20, 0, 14, width/8, height/1.2+50);
      T.textosC(20, 0, 7, width-60, height/2.5+10);
      F.dibujar (width/3+9, height/3-10, width/4, height/6);
    } else if (estado.equals("baño")) {
      background(100, 100, 255);       
      delay=delay+1;
      P.dibujarFondo(14);
      F.dibujarFlama1 (2, 0, 0, 800, 480);
      Pr.dibujarPersonaje(3, 150, 440);
      B.dibujarBotones (410, 310, 60, 60);
      B.dibujarBotones (340, 310, 60, 60);
      //void textosC(float tam, int c, int index, float x, float y) {
      T.textosC(25, 255, 9, 350, 500);
      T.textosC(50, 0, 10, 200, 300); 
      T.textosC(40, 0, 11, 420, 350);
      T.textosC(40, 0, 12, 345, 350);
    } else if (estado.equals("habit1")) {
      background(100, 100, 255);
      delay=delay+1;
      P.dibujarFondo(4);
      F.dibujarFlama (1, 450, 200);
      F.dibujarFlama1 (1, 405, 195, 100, 90);
      Pr.dibujar (2, 150, 260);
      B.dibujarFlecha(1, 600, 500, 80, 50);
      F.dibujar (370, 325, 300, 150);
      F.dibujar (450, 325, 300, 150);
      F.dibujar (500, 325, 300, 150);      
      P.dibujarImg (11, 600, 0, 200, 50);
      T.textosC(20, 0, 6, 10, 500);
      T.textosC(20, 0, 7, 600, 560);
      Pr.salvar(1, 200, 100, 1, 250, 150, 15, 290, 180, 300, 200);
    } else if (estado.equals("habit2")) {
      background(100, 100, 255);
      P.dibujarFondo(7);
      F.dibujarFlama1 (0, 130, 250, 500, 250);
      Pr.dibujar (0, 200, 150);
      B.dibujarFlecha (2, 10, 500, 80, 50);
      T.textosC(20, 0, 6, 10, 500);
      T.textosC(20, 0, 7, 35, 560);
      Pr.salvar(0, 300, 0, 2, 330, 30, 16, 390, 70, 200, 100);
    } else if (estado.equals("habit3")) {
      background(100, 100, 255);
      delay=delay+1;
      P.dibujarFondo(8);
      P.dibujarRect (0, 500, 800, 600);
      P.dibujarImg(11, 600, 0, 200, 50); 
      T.textosC(20, 0, 6, 0, 520);
      T.textosC(20, 0, 7, 600, 560);
      B.dibujarFlecha(1, 600, 500, 80, 50);
      F.dibujarFlama ( 1, 590, 330);
      F.dibujarFlama1 (0, 270, 105, 500, 250);
    } else if (estado.equals("final1")) {
      delay=delay+1;
      background(100, 100, 255);
      P.dibujarFondo(0);
      Pr.dibujarPersonaje (4, 540, 350);
      P.dibujarImg (11, 600, 0, 200, 50);
      T.textosC(20, 0, 17, 500, 590);
      //void dibujarTextos(float tam, int c,int index, float x, float y, float diam, float diam1) {
      T.dibujarTextos(25, 255, 18, 20, 400, 600, 600);
      //REINICIAR EL JUEGO
      juego.jugar=false;
    } else if (estado.equals("final2")) {
      delay=delay+1;
      background(100, 100, 255);
      T.textosC(20, 0, 19, 450, 590);
      T.dibujarTextos(30, amarillo, 20, 100, 50, 600, 200);
      T.dibujarTextos(25, 255, 21, 20, 100, 500, 400);
      P.dibujarImg1 (9, 100, 150);
    } else if (estado.equals("creditos")) {
      delay=delay+1;
      background(100, 100, 255);
      P.dibujarFondo1(11);
      P.dibujarImg1 (15, 20, 300);
      T.Actualizar();
      T.dibujarTextos(35, amarillo, 22, 370, T.texX[0], 520, T.texX[1]);
      T.dibujarTextos(20, 255, 23, 450, T.texX[2], 550, T.texX[1]);
      T.dibujarTextos(20, 255, 24, 450, T.texX[3], 550, T.texX[1]);
      T.dibujarTextos(20, 255, 25, 450, T.texX[4], 550, T.texX[1]);
      T.dibujarTextos(20, 255, 26, 450, T.texX[5], 550, T.texX[1]);
      T.dibujarTextos(20, 255, 27, 450, T.texX[6], 550, T.texX[1]);
      T.dibujarTextos(25, 255, 28, 450, T.texX[7], 550, T.texX[1]);
      T.textosC(20, 0, 29, 10, 590);
    }
  }

  void cambiarEstado( String nuevoEstado ) {
    estado = nuevoEstado;
    println( estado );
  }

  void teclas() {
    juego.teclas();
    juego.elalto=true;
    //cambio de : (presentacion) >> (casaincendiada)------------------------------
    if (keyCode==ENTER && estado.equals("presentacion")) {
      estado = "casaincendiada";
    }
    //cambio de : (casaincendiada) >> (direcciones)-------------------------------
    if (keyCode==CONTROL && estado.equals("casaincendiada")) {
      estado="direcciones";
    }
    //cambio de :(final1) >> (creditos)--------------------------------------------
    if (keyCode==ENTER && estado.equals("final1")) {
      estado="creditos";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      delay=0;
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

  void click(String b, float y1, float y2, float x1, float x2, float M, float M1) {
    pushStyle();
    if (mouseY>y1 && mouseY<y2+M && mouseX>x1 && mouseX<x2+M1) {
      estado = b;
      delay=0; 
      popStyle();
    }
  }
  void botones() {
    //HABITACIÓN DE LAS FLECHAS AL COMENZAR EL JUEGO
    if (estado.equals("direcciones")) {
      //      B.dibujar(0, 500, 200);
      //B.dibujar(1, 600, 370);
      //B.dibujar(2, 100, 370);
      // B.dibujar(0, width/1.6, height/3);
      //B.dibujar(1, width-width+height, height/1.6);
      //B.dibujar(2, width/8, height/1.6);
      //  B.dibujar(0, width/1.6, height/3);
      //B.dibujar(1, width-width+height, height/1.6);
      //B.dibujar(2, width/8, height/1.6);
      click("comedor", width/2.1-10, width/2.1-10, height, height, width/10, height/6);
      //
      click("sala", width/2.1-10, width/2.1-10, height/6, height/6, width/10, height/6);
      //200, 200, 500, 500
      click("escaleras", width/4, width/4, height/1.2, height/1.2, width/6.4, height/6);
    }
    //HABITACIÓN EN LA QUE ESTÁ BART
    if (estado.equals("comedor")) {
      click("direcciones", 500, 500, 620, 620, 50, 80);
      if (mouseY>200 && mouseY<200+223 && mouseX>0 && mouseX <0+150) {
        Pr.salvado[0]=true;
      }
    }
    if (estado.equals("sala")) {
      //FINAL DE LA AVENTURA
      if (mouseY>310 && mouseY<310+60 && mouseX>410 && mouseX<410+40) {
        estado="presentacion";
        Pr.salvado[0]=false;
        Pr.salvado[1]=false;
        Pr.salvado[2]=false;
      } else if (mouseY>310 && mouseY<310+60 && mouseX>340 && mouseX<340+60) {
        estado="final1"; 
        delay=0;
      }
    }
    //PASILLO CON FLECHAS DE HABITACIONES
    if (estado.equals("escaleras")) {
      // B.dibujar (4, width/2+10, height/2);
      //B.dibujar (5, width/3.2+5, height/2);
      //B.dibujar (5, width/4+10, height/1.7+8);
      //B.dibujar (3, width/2.4, height-height+30);
      //B.dibujarFlecha (3, width/1.1-22, height/5-5, width/6, height/5+10);
      //B.dibujarFlecha (4, 600, 525, 80, 50);
      click("direcciones", 115, 115, 705, 705, 130, 130);
      click("habit1", 300, 300, 255, 255, 100, 100);
      click("habit2", 300, 300, 410, 410, 100, 100);
      click("habit3", 360, 360, 210, 210, 100, 100);
      click("baño", 30, 30, 335, 335, 100, 100);
    }
    if (estado.equals("baño")) {
      //FINAL DEL JUEGO
      click("presentacion", 310, 310, 410, 410, 60, 60);
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      click("final1", 310, 310, 340, 340, 60, 60);
    }
    //HABITACIÓN DE BART DONDE ESTÁ EL MONO
    if (estado.equals("habit1")) {
      click("escaleras", 500, 500, 600, 600, 50, 80);
      if (mouseY>260 && mouseY< 260+185 && mouseX>150 && mouseX <150+185 &&  delay>5) {
        Pr.salvado[1]=true;
      }
    }
    //HABITACIÓN DE LISA DONDE ESTÁ EL ABUELO
    if (estado.equals("habit2")) {
      click("escaleras", 500, 500, 10, 10, 50, 80);
      if (mouseY>150 && mouseY<150+162 && mouseX>200 && mouseX <200+150) {
        Pr.salvado[2]=true;
      }
    }
    //HABITACIÓN DE HOMERO SIN NADIE
    if (estado.equals("habit3")) { 
      click("escaleras", 500, 500, 600, 600, 50, 80);
    }
  }
}
