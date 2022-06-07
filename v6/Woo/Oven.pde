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
  
  public int getTime() {
    return time;
  }
  
  public void play() {
    Button progress = new Button(300,300,50,50,0);
    progress.display();
    if (progress.isInButton()) {
      done = true;
    }
  }
}
