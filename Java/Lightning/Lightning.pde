int sX=776;
int sY=328;
int eX=sX;
int eY=sY;
PImage photo;
PImage photo2;
PImage photo3;
PImage photo4;
boolean showPic=true;
int startTime=millis();
int time=0;


void setup()
{
  
  size(1000, 800);
  background(255);
  strokeWeight(5);
  photo= loadImage("thor4.png");
  photo.resize(300, 400);
  photo2= loadImage("thor3.png");
  photo2.resize(300, 400);
  photo3=loadImage("thanos.png");
  photo3.resize(300, 400);
  photo4=loadImage("explosion.png");
  photo4.resize(600, 600);
}
void draw()
{
  time++;
  background(255);
  if (showPic)
    image(photo, 700, 300);
  image(photo3, 120, 250);
  if (!showPic) {
    image(photo2, 700, 300);
    image(photo4, 10, 120);
    for (int i=0; i<10; i++) {
      stroke(100, 244, 255);       
      while (eX>0) {
        eX=sX+(int)((Math.random()*30)-30);
        eY=sY+(int)((Math.random()*20)-10);
        line(sX, sY, eX, eY);
        sX=eX;
        sY=eY;
      }
      //int time = millis() - startTime; 
       
      //println(time);
      //if (time>100) {
      //  startTime=millis();
      //  showPic=false;
      //    //startTime = millis();
      //    reset();
        
      //} else
      //  if (time > 250 ) {
      //    time=0;        
      //  reset();
      //  }


      sX=776;
      sY=328;
      eX=sX;
      eY=sY;
    }
  }
}
//stroke((int)(Math.random()*9)+1);
//}
void mousePressed()
{  
  if (showPic)
    showPic=false;
  else
    showPic= true;
}
{
  //int time = millis() - startTime; 
  //if (time > 25 ) {
  //  showPic=false;
  //  //startTime = millis();
  //}
  //if (time>60) {
  //  startTime=millis();
  //  reset();
  //}
}


void reset() {
  showPic= true;
  sX=776;
  sY=328;
  eX=sX;
  eY=sY;
}
