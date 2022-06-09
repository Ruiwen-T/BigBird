//BigBird: Jun Hong Wang, Raven (Ruiwen) Tang, Michael Kamela
//APCS pd6
//Final Project v3
//2022-06-02

import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;
import java.util.Iterator;

//instance variables
LLQueue<Pizza> orders;
LLQueue<Pizza> pizzas;
LinkedList<Station> stations;
int currStation;
double[] scores;
Topping[] toppings;
boolean gameStarted;
Iterator<Station> it;
int doughClicks;
Pizza userAttempt;

void setup() {
  gameStarted = false;
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
    
    doughClicks = 0;
    
    size(960,720);
    background(255);
    Instructions instructions = new Instructions();
}

void draw() {
  
}

Pizza genPizza() {
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

void keyPressed() {
  if (!gameStarted) {
    gameStarted = true;
    it = stations.iterator();
    currStation = -1;
    userAttempt = new Pizza();
    if(it.hasNext()){
      Station next = it.next();
      currStation++;
      next.loadScene();
      next.showOrder(orders);
      //next.play();
      println(currStation);
    }
  }
  else if(gameStarted && !orders.isEmpty()){
    if(key == ENTER){
      if(it.hasNext()){
        Station next = it.next();
        currStation++;
        next.loadScene();
        next.showOrder(orders);
        //next.play();
        
      }
    } else if (key == 'd' && currStation == 1) {
      userAttempt.incrementK();
      println(userAttempt.getK());
      if (userAttempt.getK() >= 20) {
        currStation++;
      }
    }
    else {
      Pizza anskey = orders.dequeue();
      currStation = 0;
    }
    println(currStation);
  }
  else if (orders.isEmpty()) {
    //SCORE STUFF
  }
}
