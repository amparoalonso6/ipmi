 PImage fondo ;
 void setup () {
   size (800, 400) ;
   fondo = loadImage ("Gato2.jpg");
   background (235, 225, 215);
   
  
  }

void draw (){
  println (mouseX + "/" + mouseY);
  image (fondo, 0,0) ;
    
  // cuerpo

   noStroke () ;
  fill (237, 178, 119) ;
  triangle (524, 396, 689, 397, 598, 158) ;
  
  fill (237, 178, 119) ;
  
  ellipse (600, 200, 180,180) ;

  //oreja right
  triangle (630, 118, 680, 160, 683, 54) ;
  // oreja left
  triangle (520, 160, 570, 118, 524, 52) ;
  
  fill (250, 197, 207) ;
  triangle ( 529, 135, 556, 116, 531, 74 ) ;
  triangle (642, 117, 673, 138, 674, 74) ;
  
  fill (185, 225, 135) ;
  ellipse ( 560, 170, 40, 30) ;
  ellipse ( 640, 170, 40, 30) ;
  fill ( 250, 197, 207) ;
  triangle ( 600, 220, 585, 200, 615, 200) ;
  
  fill (0, 0, 0) ;
  ellipse ( 560, 170, 5, 30) ;
  ellipse ( 641, 170, 5, 30) ; 
  fill (255, 250, 250) ;
  stroke (0) ;
  line (591, 140 , 578, 113) ;
  line (599, 139, 596, 110) ;
  line (608, 138, 614, 111) ;
  
  stroke (0) ;
  // bigote1 der.
 
  fill (255, 250, 250) ;
  line ( 622, 228, 700, 229) ;
  // bigote2 der.
  line (622, 239, 702, 245) ;
  // bigote3 der.
  line ( 621, 247, 704, 259) ;
  // bigote1 izq.
  line ( 575, 228, 502, 228) ;
  // bigote2 izq
  line (576, 237, 505, 249) ;
  // bigote3 izq
  line (575, 248,507, 266) ;
    //linea
  line (600, 219, 600, 256) ;
  //boca
  line (600, 255, 622, 269) ;
  line (600, 255, 578, 269) ;

  
  

   
  
}
