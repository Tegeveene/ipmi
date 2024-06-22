boolean esPar(int numero){
  return(numero%2==0);
}


void rombos(color borde, color relleno){

  int cant = 4;
  float tam = height/cant;
  float trom = 70;
  
  for(int r = 0; r < cant; r++){
    for(int t = 0; t< cant; t++){
      
      pushMatrix();
      
      translate(450+r*tam,0+t*tam);
      rotate(radians(45));
      
      rectMode(CORNER);
      stroke(borde);
      fill(relleno);
      
      rect(0,0,trom,trom);
      popMatrix();
    }
  }
}


void fondo(color cFondo){ 
int cant1 = 10;
int cant2 = 50;
int alto = 9;
int ancho = 100;

  for(int i = 0; i < cant1; i++){
    for(int h = 0; h < cant2; h++){
      
      if(esPar(h+i)){
        
        fill(30);
        rect(350+i * ancho, 0+h * alto, ancho,alto);
      }else{
        
        fill(cFondo);
        rect(350+i * ancho, 0+h *alto, ancho,alto); 
      }

    }
  }
}

void lineasVerticales(color ari){
  for(int i=0; i<4; i++){
     for(int j=0; j<4; j++){
       
       int sumaX = i * 100;
       int sumaY = j * 100;
       
       fill(ari);
       quad(407+sumaX,44+sumaY, 407+sumaX,55+sumaY, 400+sumaX,50+sumaY, 400+sumaX,50+sumaY);
       quad(424+sumaX,27+sumaY, 423+sumaX, 72+sumaY, 415+sumaX,63+sumaY, 415+sumaX, 35+sumaY);
       quad(441+sumaX,9+sumaY, 440+sumaX,90+sumaY, 432+sumaX,80+sumaY, 432+sumaX,18+sumaY);
       quad(450+sumaX,0+sumaY, 450+sumaX,100+sumaY, 460+sumaX,90+sumaY, 460+sumaX,10+sumaY);
       quad(468+sumaX,19+sumaY, 468+sumaX,80+sumaY, 477+sumaX,70+sumaY, 477+sumaX,27+sumaY);
       quad(484+sumaX,35+sumaY, 485+sumaX,63+sumaY, 492+sumaX,57+sumaY, 492+sumaX,42+sumaY);       
     }
   }
}
