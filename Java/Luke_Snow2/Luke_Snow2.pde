snowFlake[] sf1= new snowFlake[100];
  
void setup() {
  size(800,400);
  for (int i=0; i<sf1.length; i++){
    sf1[i]=new snowFlake();
  }
}
void draw() {
  background(0);
  for (int i=0; i<sf1.length; i++){
    sf1[i].move();
    sf1[i].show();
  }
}

public class snowFlake {
int x;
int y;
int xspeed;
int yspeed;
int size;

 public snowFlake(){
   int x= (int)(Math.random()*801);
   int y= (int)(Math.random()*21)-10;
   int xspeed= (int)(Math.random()*3)-1;
   int yspeed= (int)(Math.random()*2)-1;
   int size= (int)(Math.random()*20)+1;
 }
 void show(){
   fill(255,255,255);
   ellipse(400,200,(int)(Math.random()*200)+1,(int)(Math.random()*200)+1);
 }
 
 void move(){
   x+=xspeed;
   y+=yspeed;
   if(y>400){
     y=-20;
   }
 }
}
