import java.util.Queue;

interface Station {

  //shows order in corner of screen using text and squares
  void showOrder(LLQueue q);

  void loadScene();

  boolean done();

  String getName();
}
