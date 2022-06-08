class Instructions {
  PFont font;
  
  Instructions() {
    size(960,720);
    background(210, 190, 120); //temporary color
    fill(60);
    textAlign(CENTER);
    font = loadFont("BungeeInline-Regular-48.vlw");
    textFont(font, 20);
    text("Welcome to Birdie's Mockeria", 480, 325);
    textFont(font, 10);
    text("Are you ready to start making pizzas?", 480, 350);
    text("Here's how it will work:", 480, 375);
    text("Each game you will receive 6 pizza orders", 480, 400); 
    text("Each order will contain the customer's preferences for toppings, baking, and cutting",  480, 425);
    text("Your job is to work through the stations to the best of your ability to make the pizza and see if the customer is satisfied with it", 480, 450);
    textFont(font, 15);
    text("After reading the instructions, press any key to start playing!", 480, 475);
  }
}
