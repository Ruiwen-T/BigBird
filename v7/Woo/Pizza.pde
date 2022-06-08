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

  public int getCuts() {
    return cuts;
  }
  
  public int getKneadClicks() {
    return kneadClicks;
  }
  
  public void incrementK() {
    kneadClicks++;
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
}
