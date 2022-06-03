import java.util.Queue;

class Cashier implements Station {
  private boolean done;
  private String name;

  public Cashier(String n) {
    name = n;
    done = false;
  }

  public void showOrder(LLQueue q) {
    
  }

  public void loadScene() {
    size(750, 750);
    background(255);
  }

  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
}
