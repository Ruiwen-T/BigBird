import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;
import java.util.Iterator;

class Game {
  //instance variables
  private LLQueue<Pizza> orders;
  private LLQueue<Pizza> pizzas;
  private LinkedList<Station> stations;
  private int currStation;
  private double[] scores;
  private Topping[] toppings;
  
  //default constructor
  public Game() {
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
  
    //initializing llqueue of orders
    orders = new LLQueue<Pizza>();
  
    //initializing empty queue of pizzas
    pizzas = new LLQueue<Pizza>();
  
    //initializing stations
    stations = new LinkedList<Station>();
    stations.add(new Cashier("cashier"));
    stations.add(new Dough("dough"));
    stations.add(new ToppingS("toppingS"));
    stations.add(new Oven("oven"));
    stations.add(new Cut("cut"));
    stations.add(new Serve("serve"));
  }
  
  
  
  void play() {
    for (int i = 0; i < 6; i++) {
      orders.enqueue(genPizza());
    }
    
    for (int i = 0; i < 6; i++) {
      Iterator it = stations.iterator();
      while (it.hasNext()) {
        Station next = (Station)it.next();
        next.loadScene();
        next.showOrder(orders);
      }
    }
  }
  
  public int getCurrStation() {
    return currStation;
  }
  
  public LLQueue getQOrders() {
    return orders;
  }
  
  public LLQueue getQPizzas() {
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
  
}
