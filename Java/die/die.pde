Die[] dice;
Die die;
int total=0;
int runningT=0;

void setup()
{
  size(500, 700);
  noLoop();
  background(204, 204, 255);
  dice = new Die[16];
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      dice[i*4+j]=new Die(120*i+20,120*j+20);     
    }   
}
}
void draw()
{  
  background(204, 204, 255);
  for(Die die: dice){      
      die.show();            
  }
  textSize(30);
  fill(0);
  text("Total: "+total,100,600);
  text("Running Total: "+runningT,100,640);
    
  
}
void mousePressed()
{
  total=0;
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      dice[i*4+j]=new Die(120*i+20,120*j+20); 
      
    }   
}
  redraw();
}
class Die //models one single dice cube
{
  private int x;
  private int y;
  private int rand;
  //variable declarations here
  Die(int x, int y) //constructor
  {
    this.x=x;
    this.y=y;
    rand=(int)(Math.random()*6)+1;
    total+=rand;
    runningT+=rand;
    //variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(255);
    rect(x, y, 100, 100, 13);
    if (mousePressed) {
      println(rand);
      if (rand==1) {        
        fill(0);
        ellipse(x+50, y+50, 20, 20);
      }

      if (rand==2) {        
        fill(0);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
      }

      if (rand==3) {        
        fill(0);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+50, y+50, 20, 20);
      }

      if (rand==4) {        
        fill(0);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
      }

      if (rand==5) {        
        fill(0);
        ellipse(x+50, y+50, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
      }

      if (rand==6) {        
        fill(0);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+25, y+50, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+75, y+50, 20, 20);
        ellipse(x+75, y+75, 20, 20);
      }




      //your code here
    }
  }
}
