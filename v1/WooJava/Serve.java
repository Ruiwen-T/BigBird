import java.util.Queue;

public class Serve implements Station {
  private boolean done;
  private String name;
  
  public void showOrder(Queue q) {
    
  }
  
  public void loadScene() {}
  
  public double checkPizza(Queue orders, Queue pizzas) {
    return -1.0;
  }
  
  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
}
