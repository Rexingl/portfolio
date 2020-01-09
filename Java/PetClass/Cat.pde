public class Cat implements Pet{
  private int happiness=0;
   public void reward(int numTimes){
    happiness+=numTimes*1;
  }
  public void punish(int numTimes){
    happiness-=numTimes*3;
  }
  public void act(){
    if (happiness>0){
      println("Happiness: " + happiness+ " Socks says Meow");
    }else{
      println("Happiness: " + happiness+ " Socks says purrrr...");
    }
  }
}
