//Gabriel Vega
//tp1 comision 1

PImage fondo;

void setup(){
size(800, 400);
textSize(100);
fondo = loadImage("gato.jpg");
}

void draw(){
  //para ver la ubicación X & Y del mouse en el sketch a traves de la consola
println("X:");
println(mouseX);

println("Y:");
println(mouseY);

//base
background(255,200,200);
image(fondo, 0,0,400,400);

fill(50);
stroke(100);

//cuerpo
ellipse(710,310,320,400);

//cabeza
ellipse(610,180,210,220);

//orejas exterior
stroke(55);
triangle(500,30,510,145,560,85);
triangle(700,20,700,130,640,90);

stroke(70); //desde este punto hasta la nariz los bordes se mantienen de este color.

//orejas interior
fill(255,0,80);
triangle(510,55,515,125,550,87);
triangle(695,35,655,85,695,110);

//ojos
fill(200,255,0);
ellipse(560,160,50,50);
ellipse(660,160,50,50);

fill(10);
ellipse(560,160,8,40);
ellipse(660,160,8,40);

//nariz
triangle(610,170,590,220,630,220);
triangle(610,240,590,220,630,220);

//bigotes
line(540,250,540,300);
line(540,250,500,270);
line(540,250,500,230);
line(670,250,680,300);
line(670,250,715,290);
line(670,250,730,245);

//boca
stroke(10);
noFill();
bezier(610,240,610,270,610,290,560,270); // 1 y 4 son los anchor point, 2 y 3 son los control point
bezier(610,240,610,270,610,290,660,270);

if(mousePressed == true){
  text("Miau",420,390);
}

}
