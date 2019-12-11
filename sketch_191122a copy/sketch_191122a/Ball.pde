class Ball {
  
  float x;
  float y;
  
  int R = 0;
  int G = 0;
  int B = 0;
  
  //PVector Color;
  //PVector color Color = (R, G, B);   //keeps giving me syntax errors. 
  PVector BallColor = new PVector (R,G,B); //finally fixed it. I'm dumb. 

    //I tried a bunhc of different ways of fixing it but none of them worked. 
    //Why can't I just assign a fucking vector
  
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
   fill(BallColor);//The function "fill()" expects paramteres like: "fill(int)"
   //I dont get it, whats the diff between fill(R, G, B) which worked fine, 
   //and fill(BallColor) when Ball color = (R, G, B)??
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
