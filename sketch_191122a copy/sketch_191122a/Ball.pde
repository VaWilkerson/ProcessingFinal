class Ball {
  
  float x;
  float y;
  
  Ball(){
   x = width / 2;
   y = height;
  }
  
  void floatUp(){
    y--;
  }
  
  void display(){
   stroke(10);
   fill(HSB, 140);
   ellipse(x, y, 64, 64);
  }
  
  
  
  
  
}
