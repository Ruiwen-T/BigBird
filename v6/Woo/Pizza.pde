import java.util.Stack;

public class Pizza {
  //stack of toppings in order:
  //tomato sauce, cheese, pepperoni, sausage, bacon, pineapple, mushroom, olive
  private Stack<Topping> toppings;
  private int oven; //can be 1, 2, or 3, how long pizza should be in oven
  private int cuts; //how many cuts, can be max 16 slices (4 cuts), 0-4

  //default constructor
  public Pizza() {
    toppings = new Stack();
    oven = 0;
    cuts = 0;
  }

  //overloaded constructor
  public Pizza(Stack<Topping> tp, int o, int c) {
    toppings = tp;
    oven = o;
    cuts = c;
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

  public String toString() {
    Stack<Topping> temp = new Stack();//new Stack();
    String output = "toppings: ";
    while(!toppings.isEmpty()) {
      temp.push(toppings.pop());
    }
    while (!temp.isEmpty()) {
      Topping storage = temp.pop();
      output += (storage.getName() + ",\n");
      toppings.push(storage);
    }
    
    output = output.substring(0, output.length() - 2);
    
    output += "\nOven time: " + oven + "\nCuts: " + cuts;
    return output;
  }
}
