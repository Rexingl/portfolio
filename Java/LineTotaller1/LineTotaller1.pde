import static java.lang.System.*;
import java.util.Scanner;

public class LineTotaller
{
   private String line;

  public LineTotaller()
  {
    setLine("");
  }

  public LineTotaller(String s)
  {    
    line=s;
  }

  public void setLine(String s)
  {
    line=s;
  }

  public int getSum()
  {
    Scanner scan= new Scanner(line);
    int total=0;  
    while(scan.hasNext()){
      //scan.nextInt();
      total+=scan.nextInt();
    }
    return total;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return getLine()+"\n"+"Sum of the numbers in the line: "+getSum();
  }
}
