//credit goes to Ruff-Commandos for button framework

class Button {
  
 // these coordinates define the top left corner of the button
 float _cornerX, _cornerY; 
 
 // define where the rectangular button ends
 float _width, _height;
 
 // defines the color of the button
 color c;
 
 // defines whats inside the button
 
 
 boolean pressed;
 
 // overloaded constructor
 Button(float x, float y, float len, float high) {
   pressed = false;
   
   _cornerX = x;
   _cornerY = y;
   
   _width = len;
   _height = high;
 } // end constructor
 
 
 // overloaded constructor with color addition
 Button(float x, float y, float wid, float high, color col) {
  this(x,y,wid,high);
  c = col;
 } // end constructor
 
 // displays the button
 void display() {
   fill(c);
   rect(_cornerX,_cornerY,_width,_height);
   
   if (mousePressed && isInButton()) {
     pressed = true;
   }
 }// end draw
 
 
 boolean isInButton() {
  if (mouseX > _cornerX && mouseX < _cornerX + _width) {
    if (mouseY > _cornerY && mouseY < _cornerY + _height) {
      return true;
    }
  }
  return false; 
 } // end isInButton
 
}// end class
