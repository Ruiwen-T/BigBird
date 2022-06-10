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
    fill(255);
    rect(375, 200, 200, 250);
    fill(0);
    textAlign(LEFT);
    text("Current order is:", 385, 220);
    text(p.toString(), 385, 240);
  }

  public void loadScene() {
    background(0);
    textAlign(CENTER);
    fill(255);
    text("Cashier", 480, 30);
    text("Ready to make the current order?", 480, 500);
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
  
  public void setDone(boolean b){
    done = b;
  }
  
  public void play() {
    
  }
}
