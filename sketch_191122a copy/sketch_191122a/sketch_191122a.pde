
float ballX;
float xSpeed = 4;

float ballColorValue = 0;
Ball b; 

float R = 0;
float G = 0;
float B = 0;

void setup(){
  size(640, 360);
  ballX = 0;
  b = new Ball(); 
}

void draw(){
  background(200);  
  fill(R, G, B);  
  //ellipse(ballX, mouseX, 32, 32);  //mouseX pos = ball y pos.
  ellipse(mouseX, mouseY, 32, 32);
  ballX = ballX + xSpeed;
  
  b.floatUp();  
  b.display(); 
  //b.mousePressed();  //epilepsy warning. 
}

void display(){  //functionality
    ellipse(50, 50, 64, 64);}

void mousePressed() {
  R = random(255);
  G = 40;
  B = 240;
  }


 //void mousePressed() {
 // if (value == 0) {
 //   value = 255;
 // } else {
 //   value = 0;
 // }
//}
