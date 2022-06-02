import java.util.Queue;
public class Dough implements Station {
  private boolean done;
  private int clickCount;
  private String name;

  public Dough(String n){
    name = n;
    done = false;
    clickCount = 0;
  }
  
  public void showOrder(Queue q) {
    
  }
  
  public void loadScene() {}
  
  public int getClickCount() {
    return clickCount;
  }
  
  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }
}
