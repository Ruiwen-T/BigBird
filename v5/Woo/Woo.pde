//BigBird: Jun Hong Wang, Raven (Ruiwen) Tang, Michael Kamela
//APCS pd6
//Final Project v3
//2022-06-02

import java.util.Stack;
import java.util.LinkedList;

boolean gameStarted = false;

void setup() {
  size(960,720);
  background(255);
  Instructions instructions = new Instructions();
}

void draw() {
}

void keyPressed() {
  if (!gameStarted) {
    gameStarted = true;
    Game game = new Game();
    game.play();
  }
}
