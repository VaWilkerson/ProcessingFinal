
float ballX;
float xSpeed = 4;

float ballColorValue = 0;
Ball b; 



void setup(){
  size(640, 360);
  ballX = 0;
  b = new Ball(); 
  //b.mousePressed();  //magenta
}

void draw(){
  background(200);  
  fill(b.R, b.G, b.B);  
  ellipse(ballX, ballX / 2, 32, 32); 
  //ellipse(ballX, width / 2, 32, 32);  //mouseX pos = ball y pos.
  //ellipse(mouseX, mouseY, 32, 32);
  ballX = ballX + xSpeed;
  
  //mousePressed();  //does nothing. 
  //b.mousePressed();  //epilepsy warning. 
  if (ballX > width || ballX < 0) { 
    xSpeed = xSpeed * -1; 
  }
  
  //if (ball(x
  
  
  b.floatUp();  
  b.display(); 
  //b.mousePressed();  //epilepsy warning. 
}

void display(){  //functionality
    ellipse(50, 50, 64, 64);}


  void mousePressed() {
  b.R = random(255);
  b.G = 40;
  b.B = 240;
  }

 //void mousePressed() {
 // if (value == 0) {
 //   value = 255;
 // } else {
 //   value = 0;
 // }
