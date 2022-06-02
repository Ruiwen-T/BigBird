import java.util.Queue;

public class Cashier implements Station {
  private boolean done;
  private String name;

  public Cashier(String n) {
    name = n;
    done = false;
  }

  public void showOrder(Queue q) {

  }

  public void loadScene() {}

  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
}
