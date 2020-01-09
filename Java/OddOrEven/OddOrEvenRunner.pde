import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;

void setup(){
  try{
    Scanner file = new Scanner(new File("/Users/owner/Documents/oddoreven.dat"));
    int size = file.nextInt();
    file.nextLine();
    for(int i = 0; i < size; i++)
    {
       int num = file.nextInt();
      OddOrEven OE= new OddOrEven(num);
      println(OE);
    }
  }
    catch (Exception E){
      println(E);
  }
}
