public class InputWindow extends PApplet {

  boolean setFrame = true;
  String out;
  
  public void settings() {
    size(500, 400);
  }
  
  public void draw ( ) { 
    if (setFrame) {
      surface.setLocation(0, 0);
      setFrame = false;
    }
    background(255);
    text("lol", 20, 20);
    text("lol", 20, 40);
    fill(69);
  }
  
  public void keyPressed ( ) {
    if ( key == 'x' ) {
      System.out.print( "hello" );
    }
   
  }
  
}