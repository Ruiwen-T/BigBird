//BigBird: Jun Hong Wang, Raven (Ruiwen) Tang, Michael Kamela
//APCS pd6
//Final Project v1
//2022-05-31

import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

class Woo {
  Queue<Pizza> orders;
  Queue<Pizza> pizzas; 
  LinkedList<Station> stations; 
  int currStation;
  double[] scores;
  Topping[] toppings;
  
  Woo() {
    toppings = new Topping[8];
    toppings[0] = new Topping("tomato");
    toppings[1] = new Topping("cheese");
    toppings[2] = new Topping("pepperoni");
    toppings[3] = new Topping("sausage");
    toppings[4] = new Topping("bacon");
    toppings[5] = new Topping("pineapple");
    toppings[6] = new Topping("mushroom");
    toppings[7] = new Topping("olive");
  }
  
  int getCurrStation() {
    return currStation;
  }
  
  Queue getQOrders() {
    return orders;
  }
  
  Queue getQPizzas() {
    return pizzas;
  }
  
  Pizza genPizza() {
    int o = (int)(1 + (Math.random() * 3));
    int c = (int)(Math.random() * 5);
    Stack<Topping> tops = new Stack();
    for (int i = 0; i < toppings.length; i++) {
      if (Math.random() > 0.5) {
        tops.push(toppings[i]);
      }
    }
    return new Pizza(tops, o, c);
  }
  
  static void main() {
    System.out.println(genPizza());
  }
}
