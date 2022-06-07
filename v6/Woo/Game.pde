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
    toppings = new Topping[6];
    toppings[0] = new Topping("pepperoni");
    toppings[1] = new Topping("sausage");
    toppings[2] = new Topping("bacon");
    toppings[3] = new Topping("pineapple");
    toppings[4] = new Topping("mushroom");
    toppings[5] = new Topping("olive");
  
    //initializing llqueue of orders
    orders = new LLQueue<Pizza>();
    
    for (int i = 0; i < 6; i++) {
      orders.enqueue((Pizza)genPizza());
    }
  
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
      Iterator it = stations.iterator();
      boolean currDone = false;
      if (it.hasNext()) {
        Station next = (Station)it.next();
      }
      while (it.hasNext() && next.done() == false) {
        
        
        //while (!currDone) {
          next.loadScene();
          next.showOrder(orders);
          Button progress = new Button(300,300,50,50,0);
          progress.display();
          if (progress.isInButton() && mousePressed) {
            currDone = true;
          }
        //}
        Station next = (Station)it.next();
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
    tops.push(new Topping("tomato"));
    tops.push(new Topping("cheese"));
   
    for (int i = 0; i < 6; i++) {
      if (Math.random() > 0.5) {
        tops.push(toppings[i]);
      }
    }
    
    Pizza p = new Pizza(tops, o, c);
    return p;
  }
  
}
