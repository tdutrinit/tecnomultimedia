/* 
Nombre: Tomás Dutrinit
Numero de Legajo: 93536/9
Comisión: 3
TP: #2 - Funciones y Ciclos FOR

Video: https://youtu.be/X9YYw_UypSM

*/

PImage ilusion;
float ang;
color startFade;
color endFade;

void setup () {
 size(800,400);
 ilusion = loadImage ("data/ilusion.jpg");
}
 
void draw () {
  
  background (242,242,242);
  image (ilusion, 0, 0, 400, 400);
    //le paso el valor de 15, y me lo devuelve convertido a radianes rotándolo
  translate (600, 200);
    //inserto la función que realicé y puse en la nueva ventana
  opticalRect ();
  //aumenta y va rotando por cada fotograma
  ang+=.05;
  if (frameCount%60==0) {
      randomFill ();
  }
    
}

void mousePressed () {
  // cuando hago click, queda en estado 355 que es similar al de la obra
  ang = 350;
}
