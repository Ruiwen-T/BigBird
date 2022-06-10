import java.util.Stack;
import java.util.ArrayList;

public class Pizza {
  //stack of toppings in order:
  //tomato sauce, cheese, pepperoni, sausage, bacon, pineapple, mushroom, olive
  private Stack<Topping> toppings;
  private int oven; //can be 1, 2, or 3, how long pizza should be in oven
  private int cuts; //how many cuts, can be max 16 slices (4 cuts), 0-4
  private int kneadClicks;
  private String[] toppingsArr;

  //default constructor
  public Pizza() {
    toppings = new Stack<Topping>();
    oven = 0;
    cuts = 0;
    kneadClicks = 0;
    toppingsArr = new String[8];
    toppingsArr[0] = "tomato";
    toppingsArr[1] = "cheese";
    toppingsArr[2] = "pepperoni";
    toppingsArr[3] = "sausage";
    toppingsArr[4] = "bacon";
    toppingsArr[5] = "pineapple";
    toppingsArr[6] = "mushroom";
    toppingsArr[7] = "olive";
  }

  //overloaded constructor
  public Pizza(Stack<Topping> tp, int o, int c) {
    this();
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
  
  public void drawPizza() {
    noStroke();
    ArrayList<Topping> topArr = new ArrayList<Topping>();
    fill(242, 229, 191);
    if (kneadClicks >= 20) {
      fill(230, 220, 180);
    }
    ellipse(480.0, 280.0, 50.0+(8*kneadClicks), 50.0+(8*kneadClicks));
    while (!toppings.isEmpty()) {
      topArr.add(toppings.pop());
    }
    
    for (int i = topArr.size() - 1; i > -1; i--) {
      toppings.push(topArr.get(i));
      if (topArr.get(i).getName().equals("tomato")) {
        fill(196, 27, 55);
        ellipse(480.0, 280.0, 40 + 8*kneadClicks, 40 + 8*kneadClicks);
      } else if (topArr.get(i).getName().equals("cheese")) {
        stroke(245, 236, 188);
        strokeWeight(3);
        if (oven == 0) {
          for (int x = 440-8*kneadClicks; x < 520+8*kneadClicks; x+=10) {
            for (int y = 240-8*kneadClicks; y < 320+8*kneadClicks; y+=10) {
              if (Math.pow(x - 480, 2) + Math.pow(y - 280, 2) < Math.pow(20 + 4*kneadClicks, 2) && Math.random() > 0.1) {
                line((float)x, (float)y, (float)x + (float)Math.random() * 4 - 2, (float)y + (float)Math.random() * 4 - 2);
              }
            }
          }
        } else if (oven == 1) {
          noStroke();
          fill(252, 215, 119);
          ellipse(480.0, 280.0, 32 + 8*kneadClicks, 32 + 8*kneadClicks);
        } else if (oven == 2) {
          noStroke();
          fill(251, 206, 92);
          ellipse(480.0, 280.0, 32 + 8*kneadClicks, 32 + 8*kneadClicks);
        } else if (oven == 3) {
          noStroke();
          fill(245, 200, 90);
          ellipse(480.0, 280.0, 32 + 8*kneadClicks, 32 + 8*kneadClicks);
        }
      } else if (topArr.get(i).getName().equals("pepperoni")) {
        noStroke();
        fill(166,25,25);
        for (int x = 440-8*kneadClicks; x < 520+8*kneadClicks; x+=20) {
          for (int y = 240-8*kneadClicks; y < 320+8*kneadClicks; y+=20) {
            if (Math.pow(x - 480, 2) + Math.pow(y - 280, 2) < Math.pow(20 + 4*kneadClicks, 2) && Math.random() > 0.25) {
              ellipse((float)x, (float)y, 12, 12);
            }
          }
        }
      } else if (topArr.get(i).getName().equals("sausage")) {
        noStroke();
        fill(151,128,80);
        for (int x = 440-8*kneadClicks; x < 520+8*kneadClicks; x+=18) {
          for (int y = 240-8*kneadClicks; y < 320+8*kneadClicks; y+=18) {
            if (Math.pow(x - 480, 2) + Math.pow(y - 280, 2) < Math.pow(20 + 4*kneadClicks, 2) && Math.random() > 0.25) {
              ellipse((float)x, (float)y, random(6, 12), random(6, 12));
            }
          }
        }
      } else if (topArr.get(i).getName().equals("bacon")) {
        noStroke();
        fill(181, 83, 90);
        for (int x = 440-8*kneadClicks; x < 520+8*kneadClicks; x+=17) {
          for (int y = 240-8*kneadClicks; y < 320+8*kneadClicks; y+=17) {
            if (Math.pow(x - 480, 2) + Math.pow(y - 280, 2) < Math.pow(20 + 4*kneadClicks, 2) && Math.random() > 0.25) {
              rect((float)x, (float)y, random(3, 7), random(4, 10));
            }
          }
        }
      } else if (topArr.get(i).getName().equals("pineapple")) {
        noStroke();
        fill(236, 225, 36);
        for (int x = 440-8*kneadClicks; x < 520+8*kneadClicks; x+=17) {
          for (int y = 240-8*kneadClicks; y < 320+8*kneadClicks; y+=17) {
            if (Math.pow(x - 480, 2) + Math.pow(y - 280, 2) < Math.pow(20 + 4*kneadClicks, 2) && Math.random() > 0.25) {
              float randX = x;
              float randY = y; 
              float randX2 = x + random(-8, 8); 
              float randY2 = y + random(-8, 8);
              
              triangle(randX, randY, randX2, randY2, (randX + randX2)/2, random(5, 10) + (randY + randY2)/2);
            }
          }
        }
      } else if (topArr.get(i).getName().equals("mushroom")) {
        noStroke();
        fill(46, 37, 84);
        for (int x = 440-8*kneadClicks; x < 520+8*kneadClicks; x+=17) {
          for (int y = 240-8*kneadClicks; y < 320+8*kneadClicks; y+=17) {
            if (Math.pow(x - 480, 2) + Math.pow(y - 280, 2) < Math.pow(20 + 4*kneadClicks, 2) && Math.random() > 0.60) {
              float start = random(0, PI);
              arc((float)x, (float)y, 20.0, 20.0, start, start + random(HALF_PI, PI));
            }
          }
        }
      } else if (topArr.get(i).getName().equals("olive")) {
        stroke(17, 7, 43);
        strokeWeight(2.2);
        noFill();
        for (int x = 440-8*kneadClicks; x < 520+8*kneadClicks; x+=17) {
          for (int y = 240-8*kneadClicks; y < 320+8*kneadClicks; y+=17) {
            if (Math.pow(x - 480, 2) + Math.pow(y - 280, 2) < Math.pow(20 + 4*kneadClicks, 2) && Math.random() > 0.40) {
              ellipse(x, y, 7, 7);
            }
          }
        }
      }
    }
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
    int toppingScore = 0;
    int doughScore = 0;
    String thisTopping = " ";
    String otherTopping = " ";
    if (oven == other.getOven()) {
      score += 25;
    }
    if (cuts == other.getCuts()) {
      score += 25;
    }
    while (!toppings.isEmpty()) {
      thisTopping += toppings.pop().getName();
    }
    while (!other.getToppings().isEmpty()) {
      String tName = oToppings.pop().getName();
      if (otherTopping.indexOf(tName) > 0) {
        toppingScore--;
      }
      otherTopping += tName;
    }
    
    for (String s: toppingsArr) {
      if (thisTopping.indexOf(s) * otherTopping.indexOf(s) > 0) {
        toppingScore += 1;
      }
    }
    if (thisTopping.equals(otherTopping)) {
      toppingScore += 8;
    }
    if (toppingScore < 0) {
      toppingScore = 0;
    }
    score += (toppingScore/16.0) * 25;
    
    if (kneadClicks > 0 && kneadClicks < 40) {
      doughScore = 20 - Math.abs(kneadClicks - 20);
    }
    score += (doughScore/20.0) * 25;
    
    return score;
  }
}
