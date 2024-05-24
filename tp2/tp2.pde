String estado;
String creditos;
int segundos;
int py;
int tam;
int botonX, botonY, botonAncho, botonAlto;
PImage titulo, protagonista, escudo;
PFont fuente; 
void setup () {
  size (640, 480);
  fuente= loadFont ("carta.vlw") ;
  textFont (fuente, 30) ;
  estado = "titulo" ;
  py= height;
  creditos = ("Directed by Chris Columbus\n Screenplay by Steve Kloves\n Produced by David Heyman\n Based on the Novel by J.K. Rowling \n Executive Producers Chris Columbus\n Mark Radcliffe\n Michael Barnathan \n Executive Producer Duncan Henderson\n Director of Photography John Seale\n Music by John Williams\n Casting by Susan Figgis\n Daniel Radcliffe \n Rupert Grint \n Emma Watson \n Tom Felton \n A Warner Bros. Pictures Presentation");
  titulo= loadImage ("Harry Potter Logo.png");
  protagonista= loadImage ("Harryy.png");
  escudo= loadImage ("Gryffindor Escudo.png");
  tam= 0;
  botonAncho= 100;
  botonAlto= 40;
  botonX= (520);
  botonY= (20);
}
void draw () {
  background (0);
  if (frameCount%60== 0) {
    segundos++;
  }
  text (creditos, 50, py, 440, 3000);
  {
    py--;
  } if (estado.equals("titulo")) {
    image (titulo, 0, 0) ; 
  } else if (estado.equals("protagonista")){
  image (protagonista, 340, 240,310,310);
  tam= tam+4;
  if (tam>=width);
  tam= width;
  } else if (estado.equals("escudo")) {
  image (escudo, 360,200, 340,280) ;
}
  if (segundos<0){
  estado= "titulo";
  } else if (segundos>=3 && segundos<=5) {
    estado= "protagonista";
}  else if (segundos> 5 && segundos<8) {
   estado= "escudo"; 
}  else if (segundos>8 && segundos <10) {
}
rect ( botonX, botonY, botonAncho, botonAlto);
fill (255);
}
void mousePressed() {
  if (estado.equals("escudo") &&
 mouseX >= botonX && mouseX<= botonX + botonAncho &&
 mouseY >= botonY && mouseY<= botonY + botonAlto) {
  estado= "titulo";
  segundos= 0;
  py= height;
}
}
