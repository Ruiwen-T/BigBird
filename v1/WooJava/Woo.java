//BigBird: Jun Hong Wang, Raven (Ruiwen) Tang, Michael Kamela
//APCS pd6
//Final Project v1
//2022-05-31

import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

public class Woo {
  //instance variables
  private Queue<Pizza> orders;
  private Queue<Pizza> pizzas;
  private LinkedList<Station> stations;
  private int currStation;
  private double[] scores;
  private Topping[] toppings;

  //default constructor
  public Woo() {
    //initializing array of toppings for future use
    toppings = new Topping[8];
    toppings[0] = new Topping("tomato");
    toppings[1] = new Topping("cheese");
    toppings[2] = new Topping("pepperoni");
    toppings[3] = new Topping("sausage");
    toppings[4] = new Topping("bacon");
    toppings[5] = new Topping("pineapple");
    toppings[6] = new Topping("mushroom");
    toppings[7] = new Topping("olive");

    //generating 6 random orders for the game
    orders = new Queue<Pizza>();
    for (int i = 0; i < 6; i++) {
      orders.enqueue(genPizza());
    }

    //initializing empty queue of pizzas
    pizzas = new Queue<Pizza>();

    //initializing stations
    stations = new LinkedList<Station>();

  }

  public int getCurrStation() {
    return currStation;
  }

  public Queue getQOrders() {
    return orders;
  }

  public Queue getQPizzas() {
    return pizzas;
  }

  public Pizza genPizza() {
    int o = (int)(1 + (Math.random() * 3));
    int c = (int)(Math.random() * 5);
    Stack<Topping> tops = new Stack();
    for (int i = 7; i > -1; i--) {
      if (Math.random() > 0.5) {
        tops.push(toppings[i]);
      }
    }
    return new Pizza(tops, o, c);
  }

  public static void main(String[] args) {
    Woo w1 = new Woo();
    System.out.println(w1.genPizza());
  }
}
