
//float ballX;
//float xSpeed = 4;

float ballColorValue = 0;
Ball b;
// an array of balls
// when you click on a ball, 

void setup(){
  size(640, 360);
  b = new Ball(); 
  //b.mousePressed();  //magenta
}

void draw(){
  background(200);  
  
  // "b" is a Ball named b that's at the top
  // if we have an array of balls, we could use a for loop
  // and tell all of them to display and move
  
  // if we click on a ball, it could make two new balls, and destroy itself
  // then we would need to keep track of those two new balls
  
  b.display();
  //b.move();  //kk, now ball is at the bottom
  
}

void display(){  //functionality
    ellipse(50, 50, 64, 64);}

  //void mouseDragged() {
  void mousePressed() {
    // for loop that goes through your array of balls
    
    // FOR EACH BALL:
    // see if mouse is over the ball;
    
   //     get mouse position
   //     see if it's x is greater than the ball's x, and less than
   //        the ball's x + width of the ball 
   //     same w/ y
   
   // if so, make ball be half in size
   // make a new ball that's the same size
   
   Ball x = new Ball();{
    //println = "New ball" //I hate how every time I need to 
    //do something incredibly simple I have to look it 
    //up online and it takes me 10 minutes instead of 10 seconds. 
    println("New Ball");
   }
    // add x to array;
    
    b.changeSize();
    
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
