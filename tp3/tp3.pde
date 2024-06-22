/*

Gabriel Vega
Comisión 1
tp 3
VIDEO: https://youtu.be/pp1zq3CE-Aw

*/
//variable de la imagen
PImage image;

//variables para el modo locura
color cRombo;
color bordeRombo;
color rellenoRombo;
color colorFondo;

void setup(){
  size(800,400);
  image = loadImage("M_10.jpeg");
  
  cRombo = color(30);
  bordeRombo = color(30);
  colorFondo = color(255);
  rellenoRombo = color(255);
}

void draw(){
  println(mouseX+"/"+mouseY+" "+frameCount);
  
  keyPressed();
  
  fondo(colorFondo);
  rombos(bordeRombo, rellenoRombo);
  lineasVerticales(cRombo);
    
  image(image, 0, 0, 400, 400);
}
