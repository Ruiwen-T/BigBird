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
int[] scores;
Topping[] toppings;
boolean gameStarted;
Iterator<Station> it;
int doughClicks;
Pizza userAttempt;
Station next;
int clicks;
int prevX;
int prevY;
int currX;
int currY;
int pizzaNum;

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
    
    scores = new int[6];
    doughClicks = 0;
    pizzaNum = -1;
    
    clicks = 0;
    prevX = 0;
    prevY = 0;
    currX = 0;
    currY = 0;
    
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
    pizzaNum++;
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
      }
    } else if (key == 'd' && currStation == 1) {
      //possibly show the pizza as a small ellipse, with each click gradually making the pizza bigger
      //once correct, change color a little?
      userAttempt.incrementK();
      println(userAttempt.getK());
      //maybe don't auto advance the game to make it harder?
      if (userAttempt.getK() >= 20) {
        next = it.next();
        currStation++;
        next.loadScene();
        next.showOrder(orders);
      }
    } else if (currStation == 2) {
      char letter = key;
      switch (letter) {
        case 'w':
          Topping tomato = new Topping("tomato");
          userAttempt.addTopping(tomato);
          println("tomato");
          break;
        case 'e':
          Topping cheese = new Topping("cheese");
          userAttempt.addTopping(cheese);
          println("cheese");
          break;
        case 'r':
          Topping pepperoni = new Topping("pepperoni");
          userAttempt.addTopping(pepperoni);
          println("pepperoni");
          break;
        case 't':
          Topping sausage = new Topping("sausage");
          userAttempt.addTopping(sausage);
          println("sausage");
          break;
        case 'y':
          Topping bacon = new Topping("bacon");
          userAttempt.addTopping(bacon);
          println("bacon");
          break;
        case 'u':
          Topping pineapple = new Topping("pineapple");
          userAttempt.addTopping(pineapple);
          println("pineapple");
          break;
        case 'i':
          Topping mushroom = new Topping("mushroom");
          userAttempt.addTopping(mushroom);
          println("mushroom");
          break;
        case 'o':
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
      text(userAttempt.toString(), 300, 300);
    } else if (currStation == 4) {
      
    } else if (currStation == 5) {
      if (key == 's') {
        Pizza anskey = orders.dequeue();
        //then compare user's attempt with anskey
        //could probably make a compare method to compare with another pizza in pizza class, see how accurate and return an int from 0-10?
        scores[pizzaNum] = userAttempt.compareTo(anskey);
        
        println("your score:" + + scores[pizzaNum]);
        
        //print for testing
        currStation = -1;
        doughClicks = 0;
        pizzaNum++;
        it = stations.iterator();
      }
    }
    println(currStation);
  }
  else if (orders.isEmpty()) {
    //SCORE STUFF
    EndPage end = new EndPage();
    end.display(scores);
  }
}

void mousePressed() {
  if (currStation == 4) {
    clicks++;
    if (clicks % 2 == 0) {
      currX = mouseX;
      currY = mouseY;
      line(prevX, prevY, currX, currY);
      //possibly use distance formula to see if two points of line are valid
      userAttempt.incrementC();
    } else {
      prevX = mouseX;
      prevY = mouseY;
    }
  }
}
