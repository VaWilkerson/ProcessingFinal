class Ball {
  
  float x;
  float y;
  
  float R = 0;
  float G = 0;
  float B = 0;
  
  float xSpeed = 3;
  float ySpeed = 4;
  
  float ballWidth = 64;
  float ballHeight = 64;
  
  Ball(){
   x = width / 2;
   y = height;
  }
  
  /*void setup(){
    fill(255, 0, 0);
  }*/
  
  void floatUp(){
    y--;
  }
  
  void display(){
   stroke(10);
   fill(R, G, B);
   ellipse(x, y, ballWidth, ballHeight);
  }
   
  void move() {
    if (x > width || x < 0) {
      xSpeed = -xSpeed;
    }
    
    if (y > height || y < 0) {
      ySpeed = -ySpeed;
    }
    
    x += xSpeed;
    y += ySpeed;
     
     
  }
  
  void changeSize() {
    ballWidth =ballWidth /2;
    ballHeight = ballHeight / 2;
    
  }
 
  //void changeColor(){ fill(random(255), 0, 0); }
   
  
  
}
