
float ballX;
float xSpeed = 4;

float ballColorValue = 0;
Ball b; 

void setup(){
  size(640, 360);
  ballX = 0;
  b = new Ball(); 
}

void draw(){
  background(200);  
  fill(ballColorValue);  
  ellipse(ballX, ballX /2, 32, 32);
  ballX = ballX + xSpeed;
  
  b.floatUp();  
  b.display(); 
  //b.mousePressed();  //epilepsy warning. 
}

void display(){  //functionality
    ellipse(50, 50, 64, 64);}

 void mousePressed() {
  ballColorValue = random(255);
  }

 //void mousePressed() {
 // if (value == 0) {
 //   value = 255;
 // } else {
 //   value = 0;
 // }
//}
