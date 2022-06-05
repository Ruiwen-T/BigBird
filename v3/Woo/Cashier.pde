import java.util.Queue;

class Cashier implements Station {
  private boolean done;
  private String name;

  public Cashier(String n) {
    name = n;
    done = false;
  }

  public void showOrder(LLQueue q) {
    Pizza p = (Pizza)q.peekFront();
    fill(255);
    rect(10, 10, 200, 200);
    fill(50);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
    fill(255);
    
  }

  public void loadScene() {
    background(0);
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
