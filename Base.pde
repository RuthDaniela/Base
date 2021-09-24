//Scketch que demuestra cómo se relacionan el círculo unitario y la función seno
// Adaptado de la documentación disponible en https://processing.org/tutorials/trig
float px, py, px2, py2;
float angle, angle2;
float radius = 50;
float frequency = 3;
float frequency2 = 3;
float x, x2;

void setup() {
  size(600, 200);
  background (127);
}

void draw() {
  background (127);
  noStroke();
  fill(255);
  ellipse(width/8, 75, radius*2, radius*2); 
  // Rota el rectangulo alrededor del circulo
  px = width/8 + cos(radians(angle))*(radius);
  py = 75 + sin(radians(angle))*(radius);

  // Crea el rectangulo
  fill(0);
  rect (px, py, 5, 5);
  stroke(100);
  line(width/8, 75, px, py);
  stroke(200);
  // Reinicia la variable colocandola en 0 en cada ejecución 
  angle2 = 0;
  // Dibuja la curva - y = sin(x)
  for (int i = 0; i< width; i++) {
    px2 = width/8 + cos(radians(angle2))*(radius);
    py2 = 75 + sin(radians(angle2))*(radius);
    point(width/8+radius+i, py2);
    angle2 -= frequency2;
  }
  // Crea y mueve una elipse sobre la curva, muestra la relación del circulo y las ondas
  noStroke();
  ellipse(width/8+radius+x, py, 5, 5);
  float Prueba=8+radius+x;
  println( Prueba +" ");
  angle -= frequency;
  x+=1;
  // Cuando la elipse sobrepasa el limite de la pantalla asigna las variables a 0
  if (x >= width-60) {
    x = 0;
    angle = 0;
  }
  // Dibuja las ondas
  stroke(50);
  line(px, py, width/8+radius+x, py);
  // Presenta los calculos en la pantalla
  text("y = sin x", 35, 185);
  text("px = " + px, 105, 185);
  text("py = " + py, 215, 185);
}
