class Ball {
  

  float R = random(255); //OMFG finally. 
  float G = random(255);
  float B = random(255);
  
  float x;
  float y;
  
  int speedX[] = {3, -3, 4, -4};
  int speedY[] = {3, -3, 4, -4};
 
  float xSpeed = speedX[2];
  float ySpeed = speedY[3];
  
  float ballWidth = 64;
  float ballHeight = 64;
  
  Ball(){
   x = random(640);
   y = random(360);
  }

  void display(){
   stroke(10);
   fill (R, G, B);
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
    ballWidth = ballWidth / 2;
    ballHeight = ballHeight / 2;
  }
 
  //void changeColor(){fill(random(R), random(G), random(B)); }
  
}
