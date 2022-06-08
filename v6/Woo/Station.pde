import java.util.Queue;

interface Station {

  //shows order in corner of screen using text and squares
  void showOrder(LLQueue<Pizza> q);

  void loadScene();

  boolean done();
  
  void setDone(boolean b);

  String getName();
  
  // play();
}
