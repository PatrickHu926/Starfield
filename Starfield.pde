peaShooter[] peas = new peaShooter[500];
void setup(){
  size(500,500);
  for (int i = 0; i<peas.length; i++){
    peas[i] = new peaShooter();
    peas[0] = new peaShooterBoom();
  }
}
void draw(){
  background(10);
  fill(0,255,0,175);
  ellipse(395,250,150,75);
  noStroke();
  fill(0,0,0,255);
  ellipse(385,225,30,30);
  ellipse(435,225,30,30);
  fill(0,255,0,300);
  ellipse(345,250,55,55);
  fill(0,0,0,300);
  ellipse(345,250,50,50);
  fill(0,255,0,175);
  rect(390,287,20,75);
  rect(362,362,75,20);
  for (int i = 0; i<peas.length; i++){
    peas[i].show();
    peas[i].move();
  }
}
class peaShooter{
  int myColor;
  int mySize;
  double myAngle;
  double mySpeed;
  double myX;
  double myY;
  peaShooter(){
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*3+10;
    myColor = color(0,255,0,60);
    mySize = 25;
    myX = 250;
    myY = -2147483648;
  }
  void move(){
    if(myX < 0){
      myX=300;
      myY=250;
    }
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
}
class peaShooterBoom extends peaShooter{
  peaShooterBoom(){
    myAngle = Math.PI;
    mySpeed = Math.random()*2+50;
    myColor = color(255,0,0,255);
    mySize = (int)Math.random()*2+62;
    myX = 300;
    myY = 250;
  }
  void move(){
    if(myX < -300){
      myX=300;
      myY=250;
    }
    myX += Math.cos(myAngle) * mySpeed;
  }
}
