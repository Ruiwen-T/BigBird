import java.util.Queue;

public class Serve implements Station {
  private boolean done;
  private String name;

  public Serve(String n) {
    name = n;
    done = false;
  }

  public void showOrder(LLQueue<Pizza> q) {
    Pizza p = q.peekFront();
    System.out.println(p);
    fill(255);
    rect(10, 10, 200, 200);
    fill(50);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
  }

  public void loadScene() {
    background(129);
    textAlign(CENTER);
    text("Serve", 480, 30);
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
  
  public void setDone(boolean b){
    done = b;
  }
}
