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
    fill(255);
    rect(10, 10, 200, 250);
    fill(50);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
  }

  public void loadScene() {
    background(129);
    fill(255);
    rect(10, 270, 200, 70);
    fill(50);
    text("Instructions:\nPress D 20 times\nto knead the\ndough.", 20, 290);
    textAlign(CENTER);
    text("Dough", 480, 30);
    text("Done kneading the dough?", 480, 500);
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
