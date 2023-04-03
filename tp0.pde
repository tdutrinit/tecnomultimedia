PImage imagen;
//le damos nombre al comando de la imagen
void setup () {
  size (800,400);
  //establezco el tamaño de la ventana
  imagen = loadImage("data/rostro.jpg"); 
  //inserto la imagen
}

void draw () {
  background (82,35,17);
  //le doy color al fondo
  image (imagen, 400, 0, 400, 400);
  //establezco la ubicacion/tamaño de la imagen
   fill(0); // le doy color a la figura
  ellipse(200,160,230,290); // xCentro, yCentro, ancho, alto
  //pelo
  fill(0);
triangle(200,280,104,400,300,400); // x1, y1, x2, y2, x3, y3
  fill(227,199,140);
  ellipse(200,330,60,60);
//cuello y remera
  fill(227,199,140);
  ellipse (200,200,220,260);
  //cara
  strokeWeight(4); // cambio el grosor de la figura
  ellipse (150,150,60,60);
  ellipse (250,150,60,60);
  fill(0);
  line(220,150,180,150); // x1, y1, x2, y2
  line(90,190,120,158);
  line(300,180,280,160);
  //lentes
  strokeWeight(1);
   fill (233,233,233);
  ellipse (250,150,44,22);
   fill (233,233,233);
  ellipse (150,150,44,22);
  //ojos
  strokeWeight(7);
  line(140,120,180,125);
  line(140,120,120,130);
  //ceja izquierda
  line(225,125,260,120);
  line(280,125,260,120);
  //ceja derecha
  strokeWeight(1);
   fill (0); 
  ellipse (160,148,14,14);
  fill (0);
  ellipse (260,148,14,14);
  //párpados
  fill(222,193,132);
  ellipse(90,190,25,70);
   fill(185,166,103);
  ellipse(96,190,13,30);
    //oreja izquierda
  fill(222,193,132);
  ellipse(310,190,25,70);
  fill(185,166,103);
  ellipse(304,190,13,30);
   //oreja derecha
  fill(222,193,132);
  triangle(180,225,220,225,200,170);
  fill(222,193,132);
  ellipse(200,219,20,20);
  noStroke(); //cancelo el comando de strokeWeight
  fill(222,193,132);
   rect(189,209,23,16); //creé este rectángulo para eliminar la mitad del círculo y darle un detalle redondo a la nariz
  fill(0);
  ellipse(190,225,7,7);
  fill(0);
  ellipse(210,225,7,7);
  //nariz
  stroke(1);
   fill (247,132,100);
  ellipse (200,260,50,19);
  line (175,260,225,260);
  //labios
}
