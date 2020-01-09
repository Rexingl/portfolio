public class Dog implements Pet{
  private int happiness=0;
  public void reward(int numTimes){
    happiness+=numTimes*3;
  }
  public void punish(int numTimes){
    happiness-=numTimes*2;
  }
  public void act(){
    if (happiness>0){
      println("Happiness: " + happiness+ " Fido says Bark");
    }else{
      println("Happiness: " + happiness+ " Fido says woof");
    }
  }
}


  
