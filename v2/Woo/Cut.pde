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
  public void showOrder(LLQueue q) {

  }

  public void loadScene() {
    
  }

  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }

  public int getCuts(){
    return cuts;
  }
}
