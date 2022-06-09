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
Station next;

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

//key inputs used: 
//any key to start the game
//enter to progress to next station
//d to knead dough
//q, w, e, r, t, y, u, i for the 8 toppings?
//1, 2, 3 for oven time?
void keyPressed() {
  if (!gameStarted) {
    gameStarted = true;
    it = stations.iterator();
    currStation = -1;
    userAttempt = new Pizza();
    if(it.hasNext()){
      next = it.next();
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
        next = it.next();
        currStation++;
        next.loadScene();
        next.showOrder(orders);
        //next.play();
        
      }
    } else if (key == 'd' && currStation == 1) {
      userAttempt.incrementK();
      println(userAttempt.getK());
      if (userAttempt.getK() >= 20) {
        next = it.next();
        currStation++;
        next.loadScene();
        next.showOrder(orders);
      }
    } else if (currStation == 2) {
      char letter = key;
      switch (letter) {
        case 'q':
          Topping tomato = new Topping("tomato");
          userAttempt.addTopping(tomato);
          println("tomato");
          break;
        case 'w':
          Topping cheese = new Topping("cheese");
          userAttempt.addTopping(cheese);
          println("cheese");
          break;
        case 'e':
          Topping pepperoni = new Topping("pepperoni");
          userAttempt.addTopping(pepperoni);
          println("pepperoni");
          break;
        case 'r':
          Topping sausage = new Topping("sausage");
          userAttempt.addTopping(sausage);
          println("sausage");
          break;
        case 't':
          Topping bacon = new Topping("bacon");
          userAttempt.addTopping(bacon);
          println("bacon");
          break;
        case 'y':
          Topping pineapple = new Topping("pineapple");
          userAttempt.addTopping(pineapple);
          println("pineapple");
          break;
        case 'u':
          Topping mushroom = new Topping("mushroom");
          userAttempt.addTopping(mushroom);
          println("mushroom");
          break;
        case 'i':
          Topping olive = new Topping("olive");
          userAttempt.addTopping(olive);
          println("olive");
          break;
      }
    } else if (currStation == 3) {
      if (key == '1') {
        userAttempt.setOven(1);
        println("bake" + 1);
      } else if (key == '2') {
        userAttempt.setOven(2);
        println("bake" + 2);
      }
      else if (key == '3') {
        userAttempt.setOven(3);
        println("bake" + 3);
      }
    } else if (currStation == 4) {
      
    } else if (currStation == 5) {
      Pizza anskey = orders.dequeue();
      //then compare user's attempt with anskey
      //could probably make a compare method to compare with another pizza in pizza class, see how accurate and return an int from 0-10?
      
      //print for testing
      currStation = 0;
    }
    println(currStation);
  }
  else if (orders.isEmpty()) {
    //SCORE STUFF
  }
}
