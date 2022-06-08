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
    Pizza p = q.peekFront();
    System.out.println(p);
    fill(255);
    rect(10, 10, 200, 200);
    fill(50);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
  }

  public void loadScene() {
    background(129);
    textAlign(CENTER);
    text("Cashier", 480, 30);
    text("Ready to make the current order?", 480, 350);
    rect(415,385,130,130);
    fill(0,200,0);
    text("Press ENTER",480,450);
  }

  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
  
  public void setDone(boolean b){
    done = b;
  }
}
