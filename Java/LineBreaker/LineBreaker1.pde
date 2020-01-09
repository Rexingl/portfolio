import java.util.Scanner;
import static java.lang.System.*;

public class LineBreaker
{
   private String line;
   private int breaker;

   public LineBreaker()
   {
     this("",0);
   }

   public LineBreaker(String s, int b)   
   {
    line=s;
    breaker=b;
   }

  public void setLineBreaker(String s, int b)
  {
    line=s;
    breaker=b;    
  }

  public String getLine()
  {
    return line;
  }

  public String getLineBreaker()
  {
    Scanner scan= new Scanner(line);
    String box ="";
    for(int j=0;j<Math.ceil(Math.ceil(line.length()/2+1)/breaker); j++){
    for(int i=0;i<breaker;i++){
      if(scan.hasNext()){
        box+=scan.next();
      }
    }
    }
    return box;
  }

  public String toString()
  {
    return getLine()+"\n"+getLineBreaker();
  }
}
