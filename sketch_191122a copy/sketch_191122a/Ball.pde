class Ball {
  
  float x;
  float y;
  
  float R = random(255); //OMFG finally. 
  float G = random(255);
  float B = random(255);
  
  //PVector Color;
  //PVector color Color = (R, G, B);   //keeps giving me syntax errors. 
  //PVector BallColor = new PVector (R,G,B); //finally fixed it. I'm dumb
    //TURNED OUT IT DOESNT WORK WHERE I NEED IT TO SO FUCK THAT. 
    
  int speedX[] = {3, -3, 4, -4};
  //want the start direction of the balls to be random, 
  //not just the location. 
  int speedY[] = {3, -3, 4, -4};
  
  
  float xSpeed = speedX[2];
  float ySpeed = speedY[3];
  
  float ballWidth = 64;
  float ballHeight = 64;
  
  Ball(){
   //x = width / 2
   x = random(640);
   y = random(360);
   
   //changeColor();
  }

  void floatUp(){
    y--;
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
    
    //x += random(xSpeed);
    //y += random(ySpeed);
     
  }
  
  void changeSize() {
    ballWidth = ballWidth / 2;
    ballHeight = ballHeight / 2;
  }
 
  void changeColor(){fill(random(R), random(G), random(B)); }
  //these colors are going to be hideous but w/e 
  
}
