// tp3
// Amparo Alonso
// https://youtu.be/Q6jjDebMrFU?feature=shared
int lineasHorizontales = 5;
int lineasVerticales = 5;
int lineasCrecen = 0;
boolean reset;
boolean invertirColores = false;
PImage obra;
color colorLineasHorizontales;
color colorLineasVerticales;
color colorCirculos;
float colorR = 0;
float colorG = 0;
float colorB = 0;


void setup() {
  size(800, 400);
  background(255);
  obra = loadImage("Op Art.jpg");
  colorLineasHorizontales = color(0);
  colorLineasVerticales = color(0);
  colorCirculos = color(0);
 
  
}

void draw() {
  image(obra, 0, 0, 400, 400);
  strokeWeight(15);

  if (reset) {
    lineasCrecen += 10;
    reset = false;
    resetVariables();
  }

 
  if (true); {
    colorR = map(mouseX, 0, width, 0, 255);
    colorG = map(mouseY, 0, height, 0, 255);
    colorB = map(mouseX + mouseY, 0, width + height, 0, 255);
    
  }

  // lineas horizontales
  stroke(colorR, colorG, colorB);
  for (int i = 0; i < lineasHorizontales; i++) {
    rect(406, 9 + 40 * i, 188 + lineasCrecen, 5); // Izquierda
    rect(609, 210 + 38 * i, 188 + lineasCrecen, 5); // Derecha
    
  } 

  // lineas verticales
  for (int i = 0; i < lineasVerticales; i++) {
    rect(609 + 40 * i, 9, 5, 187 + lineasCrecen); // Izquierda
    rect(406 + 40 * i, 208 + 5, 5, 187 + lineasCrecen); // Derecha
    
  } 

  // circulos
  strokeWeight(19);
  if (invertirColores) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(603, 203, 215 - 80 * 0, 215 - 80 * 0);
  
  if (invertirColores) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(603, 203, 215 - 80 * 1, 215 - 80 * 1);

  if (invertirColores) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(603, 203, 215 - 80 * 2, 215 - 80 * 2);
}

void keyPressed() {
  if (key == 'o' || key == 'O') {
    reset = true;
  } else if (key == 'r' || key == 'R') {
    resetVariables();
    resetColores();
    
  }
}

void mousePressed() {
  invertirColores = !invertirColores; 
}
