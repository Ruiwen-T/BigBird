import java.util.Stack;
import java.util.Queue;

public class ToppingS implements Station {
  private boolean done; 
  private Stack<Topping> toppings;
  private int[] clickEvenness;
  private int[][] clickCount;
  private String name;

  public ToppingS(String n){
    name = n;
    done = false;
    toppings = new Stack<Topping>();
    clickEvenness = new int[8];
    clickCount = new int[4][8];

  }
  
  public void showOrder(Queue q) {
    
  }
  
  public void loadScene() {}
  
  public int[][] getClickCount() {
    return clickCount;
  } 
  
  public int[] getClickEvenness() {
    return clickEvenness;
  }

  public String getName(){
    return name;
  }

}
