public class MapWindow extends PApplet {

  boolean setFrame = true;
  
  public void settings() {
      size(500, 400);
  }
  
  public void draw ( ) { 
      if (setFrame) {
        surface.setLocation(400, 500);
        setFrame = false;
      }
      background(255);
  }
  
}
