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
    fill(255);
    rect(10, 10, 200, 250);
    fill(0);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
  }

  public void loadScene() {
    background(0);
    fill(255);
    rect(10, 270, 200, 270);
    fill(0);
    text("Instructions:\nAdd the toppings\nrequested by the\ncustomer.", 20, 290);
    text("Make sure to only\nadd the requested\ntoppings once, and\nin the correct\norder\n(top to bottom).", 20, 350);
    text("Tomato sauce: w\nCheese: e\nPepperoni: r\nSausage: t\nBacon: y\nPineappple: u\nMushroom: i\nOlive: o", 20, 440);
    textAlign(CENTER);
    fill(255);
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
