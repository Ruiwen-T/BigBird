//BigBird: Jun Hong Wang, Raven (Ruiwen) Tang, Michael Kamela
//APCS pd6
//Final Project v1
//2022-05-31

import java.util.LinkedList;
import java.util.Queue;

class Woo {
  Queue<Pizza> orders;
  Queue<Pizza> pizzas; 
  LinkedList<Station> stations; 
  int currStation;
  double[] scores;
  Topping[] toppings;
  
  Woo() {
    toppings = new Topping[8];
    Topping tomato = new Topping();
  }
  
  int getCurrStation() {}
  
  Queue getQOrders() {}
  
  Queue getQPizzas() {}
  
  Pizza genPizza() {
    int o = 1 + (Math.random() * 3);
    int c = Math.random() * 5;
    int r = Math.random();
  }
  
  static void main() {
    
  }
}
