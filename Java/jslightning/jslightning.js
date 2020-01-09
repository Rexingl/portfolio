
var sX=776;
var sY=328;
var eX=sX;
var eY=sY;
var photo;
var photo2;
var photo3;
var photo4;
var showPic=true;
var startTime=millis();
var time=0;


function setup()
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
function draw()
{
  time++;
  background(255);
  if (showPic){
    image(photo, 700, 300);
  image(photo3, 120, 250);
  }
  if (!showPic) {
    image(photo2, 700, 300);
    image(photo4, 10, 120);
    for (var i=0; i<10; i++) {
      stroke(100, 244, 255);       
      while (eX>0) {
        eX=sX+floor((Math.random()*30)-30);
        eY=sY+floor((Math.random()*20)-10);
        line(sX, sY, eX, eY);
        sX=eX;
        sY=eY;
      }
      //var time = millis() - startTime; 
       
      //prvarln(time);
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
//stroke(floor(Math.random()*9)+1);
//}
function mousePressed()
{  
  //if (showPic){
  //  showPic=false;
  //}
  //else{
  //  showPic= true;
  //}
  showPic=!showPic;
}
{
  //var time = millis() - startTime; 
  //if (time > 25 ) {
  //  showPic=false;
  //  //startTime = millis();
  //}
  //if (time>60) {
  //  startTime=millis();
  //  reset();
  //}
}


function reset() {
  showPic= true;
  sX=776;
  sY=328;
  eX=sX;
  eY=sY;

}
