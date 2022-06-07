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

  public void showOrder(LLQueue q) {

  }

  public void loadScene() {
    
  }

  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
  
  public int[][] getClickCount() {
    return clickCount;
  }

  public int[] getClickEvenness() {
    return clickEvenness;
  }

  public void play() {
    Button progress = new Button(300,300,50,50,0);
    progress.display();
    if (progress.isInButton()) {
      done = true;
    }
  }
}
