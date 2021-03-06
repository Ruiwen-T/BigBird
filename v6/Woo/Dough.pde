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
    text("Dough", 480, 30);
    text("Done kneading the dough?", 480, 350);
    rect(415,385,130,130);
    fill(0,200,0);
    text("Press ENTER",480,450);
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
  
  public void play() {
    /**
    Button progress = new Button(300,300,50,50,0);
    progress.display();
    if (progress.isInButton()) {
      done = true;
    }
    **/
  }
  
  public void setDone(boolean b){
    done = b;
  }
}
