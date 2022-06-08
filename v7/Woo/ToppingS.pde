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

  public void showOrder(LLQueue<Pizza> q) {
    Pizza p = q.peekFront();
    System.out.println(p);
    fill(255);
    rect(10, 10, 200, 250);
    fill(50);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
  }

  public void loadScene() {
    background(129);
    textAlign(CENTER);
    text("Toppings", 480, 30);
    text("Done adding the toppings?", 480, 500);
    rect(415,525,130,50);
    fill(0,200,0);
    text("Press ENTER",480,555);
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
    
  }
  
  public void setDone(boolean b){
    done = b;
  }
}
