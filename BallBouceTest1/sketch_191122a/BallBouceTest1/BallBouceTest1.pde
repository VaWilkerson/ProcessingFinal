float ballX;
//float bally;
float xSpeed = 4;

void setup(){
  size(640, 360);
  ballX = 0;
  // bally = 0;
}

void draw(){
  background(200);  
    //background color. 3 inputs = RGB. 
    //If you put in only one input it assumes the same for the other 2. 
    //IE: background(200) = background(200, 200, 200) around a medium grey. 
    
  fill(150);  
     //fill of the circle. Same input as bkg. 
  
  stroke(255);  
    //white fill of the ellipse
  
  //ellipse(ballX, ballX / 2, 32, 32);
  triangle(ballX, ballX / 2, 32, 32, 32, 32); 
        //Will draw a line from one corner to another from pos 32, 32
    //height/ 2 keeps it in the horizontal center. 
    //Putting ballX as the y coord send it on a down right diagonal.  
    //ballX for the x coord sets itself as the x coord whihc allows it to move. 
    //parameter a,b,c,d = x coord, y coord, width (of the ellipse, height  
    
   ballX = ballX + xSpeed;
  //bally = bally + ySpeed;
  
  //Bounce off the edge of the window
  if (ballX > width || ballX < 0) {  //OR ||
    //ballX = ballX - xSpeed;  
      //will cause it to stop at the end of the screen b/c its constantly checking
    //xSpeed = -10;  //resetting the speed when the circle meets the edge. 
    xSpeed = xSpeed * -1; 
   //turn around //println("BRIGHTEYES");
  }
 
  
}
