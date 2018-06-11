public class StatusWindow extends PApplet {

    boolean setFrame = true;
    Player player;
    int x = 20;
    int y = 58;
  
    public StatusWindow ( Player player ) {
      this.player = player;
    }
  
    public void settings() {
      size(600, 400);
    }
  
    public void draw ( ) { 
      if (setFrame) {
        surface.setLocation(650, 0);
        setFrame = false;
      }
      background(255);
      textSize( 20 ); 
      text( "Character Status: ", x , 30 );
      textSize( 12 );
      text( player.toString( ) , x , y );
      fill(69);
    }
  
}
