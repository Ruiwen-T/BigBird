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
  public void showOrder(LLQueue<Pizza> q) {
    Pizza p = q.peekFront();
    fill(255);
    rect(10, 10, 200, 250);
    fill(0);
    textAlign(LEFT);
    text("Current order is:", 20, 30);
    text(p.toString(), 20, 50);
  }

  public void loadScene() {
    background(0);
    fill(255);
    rect(10, 270, 200, 125);
    fill(0);
    text("Instructions:\nCut the pizza\nby clicking on\none side of the\npizza, then\nanother.\nMake the number\nof cuts specified.", 20, 290);
    textAlign(CENTER);
    fill(255);
    text("Cut", 480, 30);
    text("Ready to serve the current pizza?", 480, 500);
    rect(415,525,130,50);
    fill(0,200,0);
    textAlign(CENTER);
    text("Press s,\nthen ENTER",480,550);
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
  
  public void play() {
    
  }
  
  public void setDone(boolean b){
    done = b;
  }
}
