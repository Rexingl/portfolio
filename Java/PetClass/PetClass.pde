void setup(){
  Pet fido=new Dog();
  Pet socks=new Cat();
  
  fido.reward(5);
  socks.punish(3);
  
  fido.act();
  socks.act();
}

interface Pet{
  void reward (int numTimes);
  void punish(int numTimes);
  void act();
}
//need a Dog and Cat class!
