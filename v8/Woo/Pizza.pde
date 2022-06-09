import java.util.Stack;

public class Pizza {
  //stack of toppings in order:
  //tomato sauce, cheese, pepperoni, sausage, bacon, pineapple, mushroom, olive
  private Stack<Topping> toppings;
  private int oven; //can be 1, 2, or 3, how long pizza should be in oven
  private int cuts; //how many cuts, can be max 16 slices (4 cuts), 0-4
  private int kneadClicks;

  //default constructor
  public Pizza() {
    toppings = new Stack<Topping>();
    oven = 0;
    cuts = 0;
    kneadClicks = 0;
  }

  //overloaded constructor
  public Pizza(Stack<Topping> tp, int o, int c) {
    toppings = tp;
    oven = o;
    cuts = c;
    kneadClicks = 0;
  }

  public Stack getToppings() {
    return toppings;
  }

  public int getOven() {
    return oven;
  }
  
  //could also be an increment oven time instead of set oven
  public void setOven(int time) {
    oven = time;
  }

  public int getCuts() {
    return cuts;
  }
  
  public void incrementC() {
    cuts++;
  }
  
  public int getKneadClicks() {
    return kneadClicks;
  }
  
  public void incrementK() {
    kneadClicks++;
  }
  
  public int getK() {
    return kneadClicks;
  }
  
  public void addTopping(Topping t) {
    toppings.push(t);
  }

  public String toString() {
    Stack<Topping> temp = new Stack();//new Stack();
    String output = "toppings: \n";
    while(!toppings.isEmpty()) {
      temp.push(toppings.pop());
    }
    while (!temp.isEmpty()) {
      Topping storage = temp.pop();
      output += (storage.getName() + ",\n");
      toppings.push(storage);
    }
    
    output = output.substring(0, output.length() - 2);
    
    output += "\n\nOven time: \n" + oven + "\n\nCuts: \n" + cuts;
    return output;
  }
  
  /*
  comparisons of oven, cuts, knead clicks will be comparing ints
  comparisons of toppings will require dequeueing then comparing?
  
  oven will compare ints, cuts will compare ints
  credit for every correct topping on pizza (that's supposed to be there)
  if topping isn't on the pizza and not supposed to be there, give credit (8 pts for toppings)
  check number of times a topping appears, keep track of it, if appears more than once, apply penalty
  check order of toppings (1 pt)
  pop off topping name into String, then use indexOf to check
  */
  
  public int compareTo(Pizza other) {
    Stack<Topping> oToppings = other.getToppings();
    int score = 0;
    String thisTopping = "";
    String otherTopping = "";
    if (oven == other.getOven()) {
      score++;
    }
    if (cuts == other.getCuts()) {
      score++;
    }
    while (!toppings.isEmpty()) {
      thisTopping += toppings.pop().getName();
    }
    while (!other.getToppings().isEmpty()) {
      otherTopping += oToppings.pop().getName();
    }
    
    if (score < 0) {
      score = 0;
    }
    return score;
  }
}
