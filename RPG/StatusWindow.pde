public class StatusWindow extends PApplet {

    boolean setFrame = true;
    Character character;
    int x = 20;
    int y = 58;
  
    public StatusWindow ( Character character ) {
      this.character = character;
    }
  
    public void settings() {
      size(500, 500);
    }
  
    public void draw ( ) { 
      if (setFrame) {
        surface.setLocation(700, 0);
        setFrame = false;
      }
      background(255);
      textSize( 20 ); 
      text( "Character Status: ", x , 30 );
      textSize( 12 );
      text( character.toString( ) , x , y );
      fill(69);
    }
  
}
