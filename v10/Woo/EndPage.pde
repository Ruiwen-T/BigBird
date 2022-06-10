public class EndPage {
  public EndPage() {
    background(0);
  }
  
  public void display(int[] scores) {
    int totalScore = 0;
    
    fill(255);
    rect(380, 300, 220, 200);
    textAlign(LEFT);
    fill(50);
    text("Scores of each pizza:", 390, 320);
    text("Pizza 1: " + scores[0] + "%", 390, 340);
    text("Pizza 2: " + scores[1] + "%", 390, 360);
    text("Pizza 3: " + scores[2] + "%", 390, 380);
    text("Pizza 4: " + scores[3] + "%", 390, 400);
    text("Pizza 5: " + scores[4] + "%", 390, 420);
    text("Pizza 6: " + scores[5] + "%", 390, 440);
    
    for (int i = 0; i < scores.length; i++) {
      totalScore += scores[i];
    }
    totalScore /= 6;
    text("Total Score: " + totalScore + "%", 390, 475);
  }
}
