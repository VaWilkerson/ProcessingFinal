// Variables
float r = random(0, 600);
float per1 = sin(radians(10 * frameCount)); 
float per2 = sin(radians(20 * frameCount)); 
float per3 = sin(radians(30 * frameCount)); 
float per4 = sin(radians(frameCount));
boolean qPressed = false;
boolean wPressed = false;
boolean ePressed = false;
boolean rPressed = false;
// Stores all fish
ArrayList<Fish> fish = new ArrayList<Fish>();
void setup() {
    size(800, 700);
    background(80, 208, 232);
    smooth();
    noStroke();
    // Add Fish - Do this for each fish
    // Fish(per, color1, color2, xPos, yPos, speed, type, then a bunch of values that were used in setting up your shape - IDK what they do);
    fish.add(new Fish(per2, color(252, 193, 97), color(0), 800, random(0, 400), 3, 1, 40, 22, 0, 60, -15, 60, 15, 0, 0, 70, 50, -15, -5, 10, 10));
}
void draw() {
    background(80, 208, 232);
 
    // Update each fish
    for (Fish f : fish) {
        MoveFish(f);
    }
 
    // (I'd also turn the boxes with bait into a method too)
    //Boxes that have the bait in them
 
    // Q
    if(qPressed == true) {
        stroke(203, 0, 0);
        strokeWeight(3);
    } else {
        stroke(1);
        strokeWeight(1);
    }
    rect(250, 620, 75, 75);
    // W
    if(wPressed == true) {
        stroke(203, 0, 0);
        strokeWeight(3);
    } else {
        stroke(1);
        strokeWeight(1);
    }
    rect(330, 620, 75, 75);
    // E
    if(ePressed == true) {
        stroke(203, 0, 0);
        strokeWeight(3);
    } else {
        stroke(1);
        strokeWeight(1);
    }
    rect(410, 620, 75, 75);
    // R
    if(rPressed == true) {
        stroke(203, 0, 0);
        strokeWeight(3);
    } else {
        stroke(1);
        strokeWeight(1);
    }
    rect(490, 620, 75, 75);
}
void MoveFish(Fish fish) {
    shape(fish.fish, fish.xPos, fish.yPos);
    fish.xPos = fish.xPos - fish.speed;
    if (fish.xPos < -200) {
        fish.xPos = 800;
        fish.yPos = random(0, 400);
    }
}
void keyPressed() {
  //When 'q' or 'Q' key is pressed, the first box will turn red. When another key is pressed it will go back to black.
  if (key == 'q' || key == 'Q') {
    qPressed = true;
    wPressed = false;
    ePressed = false;
    rPressed = false;
  } 
  //When 'w' or 'W' key is pressed, the second box will turn red. When another key is pressed it will go back to black.
  else if (key == 'w' || key == 'W') {
    qPressed = false;
    wPressed = true;
    ePressed = false;
    rPressed = false;
  }
 
  //When 'e' or 'E' key is pressed, the third box will turn red. When another key is pressed it will go back to black.
  else if (key == 'e' || key == 'E') {
    qPressed = false;
    wPressed = false;
    ePressed = true;
    rPressed = false;
  } 
 
  //When 'r' or 'R' key is pressed, the fourth box will turn red. When another key is pressed it will go back to black.
  else if (key == 'r' || key == 'R') {
    qPressed = false;
    wPressed = false;
    ePressed = false;
    rPressed = true;
  }  
}
void mousePressed() {
    // Loop through fish
    for (Fish f : fish) {
        // First check distance
        if (dist(f.xPos, f.yPos, mouseX, mouseY) < f.dist) {
            // Now check type
            if (f.type == 1) {
                // Now check button
                if (qPressed == true) {
                    shape(f.fish, f.xPos, f.yPos);
                    f.xPos = 1000;
                    Fish nF = f.DuplicateFish();
                    nF.yPos = random(0, 400);
                    fish.add(nF);
                    break;
                } else {
                    shape(f.fish, f.xPos, f.yPos);
                }
 
            } else if (f.type == 2) {
                // Now check button
                if (wPressed == true) {
                    shape(f.fish, f.xPos, f.yPos);
                    f.xPos = 1200;
                    Fish nF = f.DuplicateFish();
                    nF.yPos = random(0, 400);
                    fish.add(nF);
                    break;
                } else {
                    shape(f.fish, f.xPos, f.yPos);
                }
 
            } else if (f.type == 3) {
                // Now check button
                if (ePressed == true) {
                    shape(f.fish, f.xPos, f.yPos);
                    f.xPos = 1000;
                    Fish nF = f.DuplicateFish();
                    nF.yPos = random(0, 400);
                    fish.add(nF);
                    break;
                } else {
                    shape(f.fish, f.xPos, f.yPos);
                }
 
            } else if (f.type == 4) {
                // Now check button
                if (rPressed == true) {
                    shape(f.fish, f.xPos, f.yPos);
                    f.xPos = 1300;
                    Fish nF = f.DuplicateFish();
                    nF.yPos = random(0, 400);
                    fish.add(nF);
                    break;
                } else {
                    shape(f.fish, f.xPos, f.yPos);
                }
            }
        }
    }
}
// Class for a fish
// Basically stores it all together in one clean class so that we can create an array of them
class Fish {
    PShape fish, body, tail, eye;
    float xPos;
    float yPos;
    int speed; // how fast the fish moves
    int type; // type of fish, 1/2/3/4
    int dist; // how much clicking distance
    float per;
    color col;
    color col2;
    int a1, a2, a3, a4, a5, a6, b1, b2, b3, b4, c1, c2, c3, c4, str;
    // Constructor for each fish
    // Fish(per, color1, color2, xPos, yPos, speed, type, then a bunch of values that were used in setting up your shape - IDK what they do);
    Fish(float p, color color1, color color2,float x, float y, int s, int t, int d, int a1, int a2, int a3, int a4, int a5, int a6, int b1, int b2, int b3, int b4, int c1, int c2, int c3, int c4) {
        this.per = p;
        this.col = color1;
        this.col2 = color2;
        this.xPos = x;
        this.yPos = y;
        this.speed = s;
        this.type = t;
        this.dist = d;
        this.a1 = a1;
        this.a2 = a2;
        this.a3 = a3;
        this.a4 = a4;
        this.a5 = a5;
        this.a6 = a6;
        this.b1 = b1;
        this.b2 = b2;
        this.b3 = b3;
        this.b4 = b4;
        this.c1 = c1;
        this.c2 = c2;
        this.c3 = c3;
        this.c4 = c4;
 
 
        this.fish = createShape(GROUP);
 
        this.tail = createShape(TRIANGLE, a1, a2, a3, a4 + per, a5, a6 + per);
        this.tail.setFill(col);
 
        this.body = createShape(ELLIPSE, b1, b2, b3, b4);
        this.body.setFill(col);
 
        this.eye = createShape(ELLIPSE, c1, c2, c3, c4);
        this.eye.setFill(col2);
 
        this.fish.addChild(tail);
        this.fish.addChild(body);
        this.fish.addChild(eye);
    }
 
    // Duplicates a fish that has the exact same values
    Fish DuplicateFish() {
        return new Fish(this.per, this.col, this.col2, this.xPos, this.yPos, this.speed, this.type, this.dist, this.a1, this.a2, this.a3, this.a4, this.a5, this.a6, this.b1, this.b2, this.b3, this.b4, this.c1, this.c2, this.c3, this.c4);
    }
}
