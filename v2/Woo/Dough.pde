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

  public void showOrder(LLQueue q) {

  }

  public void loadScene() {
    //size(750, 750);
    //background(20);
  }

  public boolean done() {
    return done;
  }

  public String getName(){
    return name;
  }

  public int getClickCount() {
    return clickCount;
  }
}
