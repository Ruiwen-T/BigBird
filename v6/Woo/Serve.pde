import java.util.Queue;

public class Serve implements Station {
  private boolean done;
  private String name;

  public Serve(String n) {
    name = n;
    done = false;
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
  
  public double checkPizza(LLQueue orders, LLQueue pizzas) {
    return -1.0;
  }

  public void play() {
    Button progress = new Button(300,300,50,50,0);
    progress.display();
    if (progress.isInButton()) {
      done = true;
    }
  }
}
