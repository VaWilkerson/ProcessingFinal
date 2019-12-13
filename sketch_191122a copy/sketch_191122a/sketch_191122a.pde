
//float ballX;
//float xSpeed = 4;
boolean circleOver = false;

float ballColorValue = 0;
Ball b;
Ball[] balls;
int ballCount = 0;
// an array of balls
// when you click on a ball, 

void setup(){
  size(640, 360);
  b = new Ball(); 
  //b.mousePressed();  //magenta
  balls = new Ball[5];
  //b.changeColor();
}

void draw(){
  background(200); 
  
  for (int i = 0; i < ballCount; i = i+1) {
  balls[i].display();
  balls[i].move();
  //balls[i].changeColor();
}
  // "b" is a Ball named b that's at the top
  // if we have an array of balls, we could use a for loop
  // and tell all of them to display and move
  
  if (circleOver) {
    b.R = 255;
  }
  
  // if we click on a ball, it could make two new balls, and destroy itself
  // then we would need to keep track of those two new balls
}

void display(){  //functionality
    ellipse(50, 50, 64, 64);}

  void mousePressed() {
    // for loop that goes through your array of balls
    if (ballCount < balls.length){
      balls[ballCount] = new Ball();
      ballCount++;
    }
   
    // FOR EACH BALL: 
    //for (balls[i]){
    //  if (mouseX.pos && mouseY.pos = Ball.x && Ball.y){
        
    //  }
    //}
    
     
    
    // see if mouse is over the ball;
    
   //     get mouse position
   //     see if it's x is greater than the ball's x, and less than
   //        the ball's x + width of the ball 
   //     same w/ y
   
   // if so, make ball be half in size
   // make a new ball that's the same size
   
   //Ball x = new Ball();
    // add x to array;
    
    //b.display();
    b.changeSize();
    //b.changeColor();
    
  //b.R = random(255);
  //b.G = 40;
  //b.B = 240;
  }

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}


 //void mousePressed() {
 // if (value == 0) {
 //   value = 255;
 // } else {
 //   value = 0;
 // }
