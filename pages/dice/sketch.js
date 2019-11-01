'use strict';

var dice=[];
var die;

var total=0;
var runningT=0;

function setup()
{
  createCanvas(500, 700);
  noLoop(); 
  background(204, 204, 255);
  dice = [];
  for (var i=0; i<4; i++) {
    for (var j=0; j<4; j++) {
      dice[i*4+j]=new Die(120*i+20,120*j+20);     
    }   
}
}
function draw()
{    
  background(204, 204, 255);
  for (var i=0; i<4; i++) {
    for (var j=0; j<4; j++) {
     dice[i*4+j].show();      
  }
  }
  textSize(30);
  fill(0);
  text("Total: "+ total,100,600);
  text("Running Total: "+ runningT,100,640);
    
  
}
function mousePressed()
{
  total=0;
  for (var i=0; i<4; i++) {
    for (var j=0; j<4; j++) {
      dice[i*4+j]=new Die(120*i+20,120*j+20); 
      
    }   
}
  redraw();
}
class Die
{  
  
  constructor(x,y) //constructor
  {
    this.x=x;
    this.y=y;
    this.rand=parseInt(Math.random()*6)+1;
    total+=this.rand;
    runningT+=this.rand;
    //variable initializations here
  }  
  show()
  {
    fill(255);
    rect(this.x, this.y, 100, 100, 13);
    if (mousePressed) {
      print(this.rand);
      if (this.rand==1) {        
        fill(0);
        ellipse(this.x+50, this.y+50, 20, 20);
      }

      if (this.rand==2) {        
        fill(0);
        ellipse(this.x+75, this.y+25, 20, 20);
        ellipse(this.x+25, this.y+75, 20, 20);
      }

      if (this.rand==3) {        
        fill(0);
        ellipse(this.x+75, this.y+25, 20, 20);
        ellipse(this.x+25, this.y+75, 20, 20);
        ellipse(this.x+50, this.y+50, 20, 20);
      }

      if (this.rand==4) {        
        fill(0);
        ellipse(this.x+75, this.y+25, 20, 20);
        ellipse(this.x+25, this.y+75, 20, 20);
        ellipse(this.x+25, this.y+25, 20, 20);
        ellipse(this.x+75, this.y+75, 20, 20);
      }

      if (this.rand==5) {        
        fill(0);
        ellipse(this.x+50, this.y+50, 20, 20);
        ellipse(this.x+75, this.y+25, 20, 20);
        ellipse(this.x+25, this.y+75, 20, 20);
        ellipse(this.x+25, this.y+25, 20, 20);
        ellipse(this.x+75, this.y+75, 20, 20);
      }

      if (this.rand==6) {        
        fill(0);
        ellipse(this.x+25, this.y+25, 20, 20);
        ellipse(this.x+25, this.y+50, 20, 20);
        ellipse(this.x+25, this.y+75, 20, 20);
        ellipse(this.x+75, this.y+25, 20, 20);
        ellipse(this.x+75, this.y+50, 20, 20);
        ellipse(this.x+75, this.y+75, 20, 20);
      }


    }
  }
}