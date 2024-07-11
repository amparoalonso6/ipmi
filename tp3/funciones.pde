void lineasHorizontales(int lineasHorizontalesV, int yLeft, int yRight) {
  for (int i = 0; i < lineasHorizontalesV; i++) {
    int yL = yLeft + i * 40;
    rect(406, yL, 188, 5);

    int yR = yRight + i * 40;
    rect(604, yR, 188, 5);
  }
}

void lineasVerticales(int lineasVerticalesV, int xLeft, int xRight) {
  for (int i = 0; i < lineasVerticalesV; i++) {
    int xR = xRight + i * 40;
    rect(xR, 9, 5, 187);

    int xL = xLeft + i * 40;
    rect(xL, 208, 5, 187);
  }
}

void circulos(int colorR, int colorG, int colorB, int diam) {
  strokeWeight(19);
  fill(colorR, colorG, colorB);
  for (int i = 0; i < 3; i++) {
    int d = diam - i * 77;
    ellipse(596, 206, d, d);
  }
}
