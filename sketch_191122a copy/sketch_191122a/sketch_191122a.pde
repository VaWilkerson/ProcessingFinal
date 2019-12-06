
float ballX;
float xSpeed = 4;

Ball b; 

void setup(){
  size(640, 360);
  ballX = 0;
  b = new Ball(); 
}

void draw(){
  background(200);  
  fill(255, 0, 0);  
  ellipse(ballX, ballX /2, 32, 32);
  ballX = ballX + xSpeed;
    
  b.floatUp();  
  b.display(); 
}

  
  void display(){  //functionality
    ellipse(50, 50, 64, 64);}


void mousePressed(){
    b.changeColor();
  }
  
