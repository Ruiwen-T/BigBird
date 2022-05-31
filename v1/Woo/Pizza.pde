import java.util.Stack;

class Pizza {
  //stack of toppings in order:
  //tomato sauce, cheese, pepperoni, sausage, bacon, pineapple, mushroom, olive
  Stack<Topping> toppings;
  int oven; //can be 1, 2, or 3, how long pizza should be in oven
  int cuts; //how many cuts, can be max 16 slices (4 cuts), 0-4
  
  //default constructor
  Pizza() {
    toppings = new Stack();
    oven = 0; 
    cuts = 0;
  }
  
  //overloaded constructor
  Pizza(Stack<Topping> tp, int o, int c) {
    toppings = tp;
    oven = o;
    cuts = c;
  }
  
  Stack getToppings() {
    return toppings;
  }
  
  int getOven() {
    return oven;
  }
  
  int getCuts() {
    return cuts;
  }
}
