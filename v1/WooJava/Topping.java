public class Topping {
  private int clickEvenness;
  private int[] clickCount;
  private String name;

  public Topping() {
    clickEvenness = 0;
    clickCount = new int[4];
  }

  public Topping(String n) {
    this();
    name = n;
  }

  public int getClickEvenness() {
    return 0;
  }
  public int[] getClickCount() {
    return new int[1];
  }

  public String getName() {
    return name;
  }
}
