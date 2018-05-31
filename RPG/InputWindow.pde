import java.util.Scanner;

public class InputWindow extends PApplet {

  boolean setFrame = true;
  
  public void settings() {
    size(500, 500);
  }
  
  public void draw ( ) { 
    if (setFrame) {
      frame.setLocation(0, 0);
      setFrame = false;
    }
    background(255);
  }
  
  
  
}