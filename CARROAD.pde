// Example: Two Car objects
Car myCar1;
Car myCar2; // Two objects!
Car myCar3;
Car myCar4;
 
void setup() {
  size(200,200);
  float a,b,c;
  a =random(255);
  b=random(255);
  c=random(255);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(a,b,c),0,40,0.5); 
  myCar2 = new Car(color(b,c,a),0,80,0.7);
  myCar3 = new Car(color(c,a,a),200,130,-1);
  myCar4 = new Car(color(b,c,b),200,170,-0.8);
}
 
void draw() {
  background(95,95,90);
  fill(255);
  rect(10,100,40,5);
  fill(255);
  rect(60,100,40,5);
  fill(255);
  rect(110,100,40,5);
  fill(255);
  rect(160,100,40,5);
  fill(255);
  rect(210,100,40,5);
  fill(0,255,0);
  rect(100,0,300,35);
  fill(0,255,0);
  rect(100,190,300,20);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
  myCar3.driveG();
  myCar3.display();
  myCar4.driveG();
  myCar4.display();
}
 
// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
 
  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
 
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }
 
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = -15;
    }
  }
  void driveG(){
    xpos = xpos + xspeed;
    if (xpos < width-200) {
      xpos = 215;
    }
  }
}