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

  public void showOrder(LLQueue<Pizza> q) {
    Pizza p = q.peekFront();
    System.out.println(p);
    fill(255);
    rect(10, 10, 200, 250);
    fill(50);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
  }

  public void loadScene() {
    background(129);
    textAlign(CENTER);
    text("Oven", 480, 30);
    text("Done baking the pizza?", 480, 500);
    rect(415,525,130,50);
    fill(0,200,0);
    text("Press ENTER",480,555);
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
    
  }
  
  public void setDone(boolean b){
    done = b;
  }
}
