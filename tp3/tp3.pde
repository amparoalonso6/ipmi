//tp3rec
//Amparo Alonso
// https://www.youtube.com/watch?v=i2l2FrT_BBo


int lineasHorizontalesV = 5;
int lineasVerticalesV = 5;
boolean reset = true;
PImage obra;
color colorLineasHorizontales;
color colorLineasVerticales;
color colorCirculos;
float colorR = 0;
float colorG = 0;
float colorB = 0;
float promedio= 0;


void setup() {
  size(800, 400);
  background(255);
  obra = loadImage("F_25.jpg");
  colorLineasHorizontales = color(0);
  colorLineasVerticales = color(0);
  colorCirculos = color(0);
}


void draw() {
  background(255);
  image(obra, 0, 0, 400, 400);
  strokeWeight(15);
  lineasHorizontales (lineasHorizontalesV, 9, 210);
  lineasVerticales (lineasVerticalesV, 406, 609);
  circulos ((int)colorR, (int)colorG, (int)colorB, 215);


  if (reset) {
    colorR = map(mouseX, 0, width, 255, 0);
    colorG = map(mouseY, 0, height, 255, 0);
    colorB = map(mouseX + mouseY, 0, width + height, 255, 0);
  }
}
void mousePressed() {
  promedio = promedioPosMouse (mouseX, mouseY);
  println("promedio de posiciones del mouse: " + promedio);
}

void keyPressed() { 
 
  if (key == 'r' || key == 'R') { //Para que el reset funcione bien; antes debe hacer click en el sketch para que se ejecute correctamente
    reset= !reset;
    colorR = 255;
    colorG = 255;
    colorB = 255;
  }
 }
 void resetVariables() {
  lineasHorizontalesV = 5;
  lineasVerticalesV = 5;
  colorR = 0;
  colorG = 0;
  colorB = 0;
}
 
 int promedioPosMouse(int x, int y) {
  return (x + y) / 2;
}
