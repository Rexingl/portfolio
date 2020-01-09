//© A+ Computer Science  -  www.apluscompsci.com
//Name -
//Date -
//Class - 
//Lab  -

import java.util.Scanner;
import static java.lang.System.*;

public class Average
{
   private String line;

   public Average()
   {
     setLine("");    
   }

   public Average(String s)
   {
     line=s;
   }

  public void setLine(String s)
  {
    line=s;
  }

  public int getCount()
   {
    Scanner scan= new Scanner(line);
    int count=0;  
    while(scan.hasNext()){
      scan.nextInt();
      count++;
    }
    return count;
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
  
  public double getAverage()
  {
    double average=0.0;
    average=getSum()/getCount();


    return average;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return getLine()+"\n"+getAverage();
  }
}
