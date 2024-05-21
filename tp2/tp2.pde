//Gabriel Vega
//tp2 
//comision 1
//legajo: 119164/3


//imágenes
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

//textos
String texto0;
String texto1;
String texto2;
String texto3a;
String texto3b;
String texto3c;
String texto3d;
String texto4;
String texto5;
String texto6a;
String texto6b;

//estados de las pantallas
int estado;

//fuente
PFont fuente;

void setup(){
  
  size(640,480);
  
  //asígnación de variable del estado
  estado = 0;
  
  //asignación de fuente
  fuente = loadFont("fuente-base.vlw");
  textFont(fuente);
  textAlign(CENTER,CENTER);
  
  //asignación de imágenes
  img1 = loadImage("image1.jpg");
  img2 = loadImage("image2.jpg");
  img3 = loadImage("image3.jpg");
  img4 = loadImage("image4.jpg");
  img5 = loadImage("image5.jpg");
  
  //asignación de textos
  texto0 = "American Psycho";
  texto1 = "En la década de 1980, Patrick Bateman es \nun hombre exitoso y obsesionado \npor la competencia y por la perfección material, \nquien utiliza los más caros \ncosméticos masculinos, equipos de gimnasia, \nsolárium y demás maquinaria estética para \nlograr un cuerpo atlético y bien acicalado, \nidentificador material del éxito social.";
  texto2 = "En su obsesión por la perfección, el protagonista \npierde su cordura cometiendo multiples crimenes \nque veremos a lo largo del filme";
  texto3a = "En el reparto destacable de esta joya audiovisual \npodemos encontrar a:";
  texto3b = "Christian Bale como Patrick bateman";
  texto3c = "Willem Dafoe como Donald Kimball";
  texto3d = "Jared Leto como Paul Allen";
  texto4 = "¡La pelicula se considera un éxito en taquilla \nal haber sido hecha con un presupuesto de \n7 millones de dólares y haber recaudado\n 34,3 millones de dólares!";
  texto5 = "En lo personal recomiendo bastante la película, \nes imprescindible de ver, quizás el final deje un \npoco de más que desear pero no le quita \nlo logrado al filme";
  texto6a = "Gracias por ver...";
  texto6b = "Reiniciar";
}

void draw(){
  //debug
  println(mouseX+"/"+mouseY+" Frames:"+frameCount/60+" estado:"+estado);
  
  //----------------------------------------------------ESTADOS----------------------------------------------------
  if(estado == 0){
    background(frameCount/2,0,0);
    fill(255,0,0);
    textSize(frameCount/2);
    text(texto0,320,240);
    
    if(frameCount/60 >=9){
      frameCount = 0;
      estado = 1;
    }
  }
  
  if(estado == 1){
    image (img1,0,0,640,480);
    fill(0);
    textSize(25);
    text(texto1,320,600-frameCount/3);
    
    if(frameCount/60 >=35){
      frameCount = 0;
      estado = 2;
    }
  }
  
  if(estado == 2){
    image (img2,0,0,640,480);
    fill(255,255,255);
    textSize(25);
    text(texto2,700-frameCount/2,240);
    
    if(frameCount/60 >=35){
      frameCount = 0;
      estado = 3;
    }
  }
  
  if(estado == 3){
    image (img3,0,0,640,480);
    fill(255,0,0);
    textSize(25);
    text(texto3a,320,50);
    fill(255,255,255);
    textSize(30);
    text(texto3b,320+frameCount/2,200); 
    text(texto3c,320-frameCount/2,250);
    text(texto3d,320,260+frameCount/3);
    
    if(frameCount/60 >=20){
      frameCount = 0;
      estado = 4;
    }
  }
  
  if(estado == 4){
    image (img4,0,0,640,480);
    fill(255,255,255);
    textSize(25);
    text(texto4,frameCount/2,frameCount/2);
    
    if(frameCount/60 >=18){
      frameCount = 0;
      estado = 5;
    }
  }
  
  if(estado == 5){
    image (img5,0,0,640,480);
    fill(255,0,0,255);
    textSize(25);
    text(texto5,320,500-frameCount/2);
    
    if(frameCount/60 >=20){
      frameCount = 0;
      estado = 6;
    }
  }
  
  //Estado de reinicio
  if(estado == 6){
    background(frameCount/2,0,0);
    textSize(50);
    fill(200,0,0);
    text(texto6a,340,140);
    rectMode(CENTER);
    fill(0,0,0);
    rect(320,340,170,130);
    fill(250,0,0);
    rect(320,340,150,100);
    fill(0,0,0);
    textSize(30);
    text(texto6b,320,340);
  }
  
}

//Boton de reinicio
void mousePressed(){
  if( estado == 6 && mouseX>=235 && mouseX<=404 && mouseY>=235 && mouseY<=404){
    frameCount = 0;
    estado = 0;
  }
}
