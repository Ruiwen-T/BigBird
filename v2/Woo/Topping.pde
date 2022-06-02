class Topping {
  int clickEvenness;
  int[] clickCount;
  String name;
  
  Topping() {
    clickEvenness = 0; 
    clickCount = new int[4];
  }
  
  Topping(String n) {
    this();
    name = n;
  }
  
  int getClickEvenness() {}
  int[] getClickCount() {}
  
  String getName() {
    return name;
  }
}
