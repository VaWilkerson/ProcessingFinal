/*
Ball is a class that has data and functions
  need a display function for how the ball looks
  need a movemment fn for how the ball moves
  need a 

b is an instance of class Ball 

When I click the screen (and later, the ball) 
I want to create another instance of class Ball
called b2(or whatever)

Game has data and functions
  need a duplicate fn to spawn a new ball on mouseclicked. 
  need a color change function to change the color of the 
    balls when a new one is spawned.
  need to spawn them in opposite direction of the ball. 
  
  maybe start with just changing the color and direction of the new ball.
  
Take the current color of the ball (blue) and spawn a new ball
  that is the complementary color (orange). 
  Problem. That will only go back and forth b/w blue and orange. 
  W/e I'll figure that out later. 
  
Need to change the color mode to HSV so that I'm dealing with a wheel 
  instead of a line. 
  
1. make a game sketch 
2. make a ball class
3. put the ball in the game sketch
4. make a duplicate function to spawn a new ball

new ball needs different color. 
  
  
  
Might be easier to have different shape classes and just destroy 
  the original shape when spawning the next two. 
  Assigning the color would have to reference the color of the previous shape. 
    Fuck. Nevermind that is not easier.
*/
