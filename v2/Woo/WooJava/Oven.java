import java.util.Queue;

public class Oven implements Station {
  private boolean done;
  private int time;
  private String name;

  public Oven(String n){
    name = n;
    done = false;
    time = 0;
  }
  
  public void showOrder(Queue q) {
    
  }
  
  public void loadScene() {}

  public int getTime() {
    return time;
  }
  
  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
}
