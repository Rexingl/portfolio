void setup() {
  size(1300,800);  
  MarkovChain mc=new MarkovChain();
  //String [] str=loadStrings("Roses.txt");
  //String [] str=loadStrings("NYC.txt");
  //String [] str=loadStrings("oneFish.txt");
  //String [] str=loadStrings("gucciGang.txt");
  String [] str=loadStrings("recipes.txt");
  
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
    mc.generateText(s);
    print(mc.generateText(s));
  }
  mc.printMap();
    
}
void draw(){  
  background(255);
  
  
  
}
