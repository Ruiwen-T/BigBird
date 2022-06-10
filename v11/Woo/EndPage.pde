public class EndPage {
  public EndPage() {
    background(0);
    for(int x = 0; x < 960; x+=50){
      for(int y = 0; y < 720; y+=50){
        fill(random(0, 255), random(0, 255), random(0, 255));
        ellipse(x,y,10,10);
      }
    }
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
    
    textAlign(CENTER);
    fill(255);
    rect(190,575,575,50);
    fill(0);
    text("Made with <3 by Team BigBird\nJun Hong Wang, Raven (Ruiwen) Tang, and Michael Kamela", 480, 600);
  }
}
