import java.util.Queue;

interface Station {
  //boolean done;
  
  //shows order in corner of screen using text and squares
  void showOrder(Queue q);
  
  void loadScene();
  
  boolean done();
}
