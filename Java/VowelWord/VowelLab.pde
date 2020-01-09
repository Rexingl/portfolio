import java.util.ArrayList;
import java.util.Scanner;
import java.util.Arrays;
import static java.lang.System.*;

void setup(){

    // one way to create new Word objects and load a Word array (use Scanner)
    String names1 = "freddy at elephant whoooooodat alice tommy bobby it at about";
    Scanner scan = new Scanner(names1);
    
    VowelWord[] words1 = new VowelWord[10];
    int i = 0;
    while (scan.hasNext()) {
      words1[i] = new VowelWord(scan.next());
      i++;
    }
    
    System.out.println("before sorted: ");
    for (VowelWord word : words1) {
      out.println(word);
    }
    System.out.println();
    
    System.out.println("after sorted: ");
    Arrays.sort(words1);
    for (VowelWord word : words1) {
      out.println(word);
    }
    
    // second way to create new Word objects and load a Word array (use the split method from the String class)
    //String[] names2 = "freddy at elephant whoooooodat alice tommy bobby it at about".split(" ");
    //Word[] words2 = new Word[10];
    //int j = 0;
    //for (String s : names2) {
      //words2[j] = new Word(s);
      //j++;
    //}

    // Arrays.sort(words);
  }


public class VowelWord implements Comparable<VowelWord>{
  private String word;

  public VowelWord( String s){
    word=s;
  }

  private int numVowels(){
    String vowels = "AEIOUaeiou";
    int vowelCount=0;
    for(int i=0; i<vowels.length();i++){
      for(int j=0; j<word.length();j++){
        if(word.indexOf(i)==vowels.indexOf(j)){
          vowelCount++;
        }
      }
    }
    return vowelCount;
  }

  public int compareTo(VowelWord other){
    if(this.numVowels()>other.numVowels()){
      return 1;
    }
    if(this.numVowels()<other.numVowels()){
      return -1;
    }

    return this.word.compareTo(other.word);
  }

  public String toString(){
    
    return word;
  }
}
