class Texto {
  //PROPIEDADES 
 String [] texto=new String [34];
  int[] texX= new int [8];
  //TIPOGRAFÍA
  PFont tipog1;

  //CONSTRUCTOR
  Texto() {
    //PONER LA TIPOGRAFÍA
    tipog1=loadFont("ComicSansMS-48.vlw");
   cargarTextos();
   cargarTextosMovimiento ();
  }
  //MÉTODOS
  void Actualizar(){
     for (int i =0; i <8; i++) {
      texX[i]=texX[i]-4;
     }
  }
  void dibujarTextos(float tam, int c,int index, float x, float y, float diam, float diam1) {
    pushStyle();
    textFont(tipog1);
    textSize(tam);
    fill(c);
    text(texto[index], x, y, diam, diam1);
    popStyle();
  }

  void textosC(float tam, int c, int index, float x, float y) {
    pushStyle();
    textFont(tipog1);
    textSize(tam);
    fill(c);
    text(texto[index], x, y);
    popStyle();
  }  
  
  void cargarTextos () {
    texto[0]="La casa Simpsons se esta incendiando, los bomberos no llegaran a tiempo. Homero debera salvar a los tres personajes que se encuentran atrapados en la casa...";
    texto[1]="[Presione enter para comenzar]";
    texto[2]="Homero tendra que tener mucho cuidado! es muy peligroso...";
    texto[3]="[Presiona Control para ingresar]";
    texto[4]="Debe buscar rapido, antes de que el fuego se propague por toda la casa.";
    texto[5]="[Presione con mouse una de las flechas]";
    texto[6]="[¡Busque personajes!, si encuentras haz click en el o ellos]";
    texto[7]="Volver";
    texto[8]="¡Ay caramba! gracias viejo...";
    texto[9]="¡Se quemó!";
    texto[10]="¿Volver a empezar?";
    texto[11]="Si";
    texto[12]="No";
    texto[13]="¡Homero tendra que revisarlas una por una y con cuidado!";
    texto[14]="[Haz click en las flecha para ingresar a la habitacion]";
    texto[15]="¡@ah ahia@!...";
    texto[16]="¡Hijo!    Pensé que se olvidarian de mi...";
    texto[17]="[Presiona enter para finalizar]";
    texto[18]="Al dia siguiente Lisa Simpsons les brindo un homenaje a sus seres queridos por el tragico desenlace del incendio, debido a que homero se quemo al intentar rescatar a sus familiares.";
    texto[19]="[Presiona Backspace para finalizar]";
    texto[20]="¡Homero logro salvar a su familia!" ;
    texto[21]="El grandioso acto de Homero se difundio por todo Springfield, lo que genero que homero sea considerado un heroe para la ciudad pero, principalmente para su familia.";
    texto[22]="¡La aventura ha finalizado!";
    texto[23]="Facultad de Arte UNLP";
    texto[24]="Tecno Multimedia 1";
    texto[25]="Prof: Matias Jauregui";
    texto[26]="Alumna: Castro Denise y \n Oriana Gomez";
    texto[27]="Comisión 2";
    texto[28]="¡GRACIAS!";
    texto[29]= "[Presiona barra espaciadora para reiniciar]";
    texto[30]= "Homero debera salvar a Bart, debe tener cuidado y saltar cuando sea necesario";
    texto[31]= "[Presione Enter para ir a la siguiente pantalla]";
    texto[32]= "[No has logrado salvar a Bart, presiona Enter y vuelve al inicio]";
  }
  
  void cargarTextosMovimiento () {
  texX[0]=700;
  texX[1]=0;
  texX[2]=750;
  texX[3]=780;
  texX[4]=810;
  texX[5]=840;
  texX[6]=900;
  texX[7]=930;
  }
}
