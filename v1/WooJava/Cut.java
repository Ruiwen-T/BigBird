import java.util.Queue;

public class Cut implements Station {
  private boolean done;
  private int cuts;
  private String name;
  
  public Cut(String n){
    name = n;
    done = false;
    cuts = 0;
  }
  public void showOrder(Queue q) {
    
  }
  
  public void loadScene() {}
  
  public int getCuts(){
    return cuts;
  }
  
  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }

}
