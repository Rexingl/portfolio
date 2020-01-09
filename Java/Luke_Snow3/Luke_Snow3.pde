snowFlake[] sf1= new snowFlake[300];
float grow;
float tex;
boolean lights;
void setup() {
  size(1000, 500);
  //img=loadImage(
  for (int i=0; i<sf1.length; i++) {
    sf1[i]=new snowFlake();
  }
  lights=true;
}
void draw() {
  background(#67E8E7);
  if (mousePressed) {
    background(0, 0, 70);
  }
  for (int i=0; i<sf1.length; i++) {
    sf1[i].move();
    sf1[i].show();
  }
  grow();
  house();
  drawHH();  
  showLights();
  mousePressed();
  //image(img,mouseX,mouseY,100,100);
}
void grow() {
  fill(255, 255, 255);
  rect(0, height-100, width, grow);
  if (grow<-90) {
    grow=-90;
  } else {
    grow-=.01;
  }
  fill(255, 255, 255);
  rect(680, 170, 240, grow);
  if (grow<-50) {
    grow=-50;
  } else {
    grow-=.01;
  }
  fill(255, 255, 255);
  rect(560, 270, 150, grow);
  if (grow<-50) {
    grow=-50;
  } else {
    grow-=.01;
  }
}
void house() {
  //ground
  noStroke();    
  fill(255, 255, 255);
  rect(0, height-100, width, 100);
  fill(#3E3939);
  rect(0, height-75, width, 45);
  fill(#3E3939);
  rect(590, 400, 90, 50);
  fill(#3E3939);
  rect(680,405,160,10);
  fill(#3E3939);
  rect(810,390,30,20);
  //house
  fill(200, 200, 200);
  rect( 700, 225, 200, 175 );
  fill(200, 200, 200);
  rect(570, 280, 130, 120);     
  //door
  fill(#504949);
  rect(800, 330, 50, 70);
  fill(#504949);
  rect(590, 310, 90, 90);
  //roof
  fill(160, 82, 45);
  rect( 680, 170, 240, 55);
  fill(160, 82, 45);
  rect(560, 270, 150, 30);          
  //moon
  fill(#DFE312);
  ellipse(100, 100, 50, 50);
  //lightpost
  fill(#3A3E46);
  rect(450,215,15,190);
  //bushes
  fill(#096C18);
  ellipse(780,388,30,30);
  fill(#096C18);
  ellipse(870,388,30,30);
  //hill
  fill(255,255,255);
  triangle(0,400,0,250,350,400);
  //tree1
  fill(#096C18);
  triangle(40,300,70,200,100,300);
  fill(#096C18);
  triangle(50,250,70,200,90,250);
  fill(#582209);
  rect(60,300,20,30);  
}
void mousePressed() {
  if (mousePressed) {
    lights=true;      
    fill(255, 255, 255);
    ellipse(100, 100, 50, 50);
    fill(#EDD12D);
    rect(725, 235, 160, 70);
    fill(#096C18);
    triangle(735, 305, 755, 240, 775, 305);
    fill(#EFF033);
    rect(445,215,25,20);
    fill(#3A3E46);
    rect(445,215,25,10);
  } else {
    lights=false;
    fill(#64B7B6);
    rect(725, 235, 160, 70);
    fill(#096C18);
    triangle(735, 305, 755, 240, 775, 305);
    fill(#3A3E46);
    rect(445,215,25,20);
  }
}
public void drawHH() {
  textSize(30);
  fill(#FCF0EB);
  text("Happy Holidays!", tex+1000, 455);
  if (tex>0) {
    tex=1000;
  } else {
    tex-=.9;
  }
}
public void showLights() {
  noStroke();
  if (lights==true) {
    fill(255, 255, 0);
    rect(770, 330, 20, 30);
    fill(255, 255, 0);
    rect(860, 330, 20, 30);
  } else if (lights==false) {
    fill(#5D5D59);
    rect(770, 330, 20, 30);
    fill(#5D5D59);
    rect(860, 330, 20, 30);
  }
}
  
