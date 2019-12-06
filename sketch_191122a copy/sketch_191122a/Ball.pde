class Ball {
  
  float x;
  float y;
  
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
   fill(random(255), 140, 0);
   ellipse(x, y, 64, 64);
  }
  
  
  void changeColor(){
    fill(random(255), 0, 0);
  }
  
  
  
}
