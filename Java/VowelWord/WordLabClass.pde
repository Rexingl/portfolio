import static java.lang.System.*;

public class VowelWord implements Comparable<VowelWord>
{
  private String word;

  public VowelWord( String s)
  {

    word=s;

  }

  private int numVowels()
  {
    String vowels = "AEIOUaeiou";
    int vowelCount=0;

    return vowelCount;
  }

  public int compareTo(VowelWord other)
  {
     if(this.numVowels()>other.numVowels()){
      return 1;
    }
    if(this.numVowels()<other.numVowels()){
      return -1;
    }

    return this.word.compareTo(other.word);
  }

  public String toString()
  {
    return word;
  }
}
