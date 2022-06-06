import java.util.Queue;
import java.util.Stack;

class Cashier implements Station {
  private boolean done;
  private String name;

  public Cashier(String n) {
    name = n;
    done = false;
  }

  public void showOrder(LLQueue<Pizza> q) {
    Game g = new Game();
    text(g.genPizza().toString(), 300, 300);
    Pizza p = q.peekFront();
    System.out.println(p);
    fill(255);
    rect(10, 10, 200, 200);
    fill(50);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    String t = q.peekFront().toString();
    text(t, 20, 50);
    fill(255);
    
  }

  public void loadScene() {
    background(129);
    textAlign(CENTER);
    text("Cashier", 480, 30);
  }

  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
}
