public class MapWindow extends PApplet {

  boolean setFrame = true;
  Map currentMap;
  Character player;
  
  public MapWindow ( Map map, Character player ) {
    this.currentMap = map;
    this.player = player;
  }
  
  public void settings() {
      size(500, 400);
  }
  
  public void draw ( ) { 
      if (setFrame) {
        surface.setLocation(0, 0);
        setFrame = false;
      }
      background(255);
      outputMap( );
      // fill(0);
  }
  
  public void outputMap ( ) {
    int x = 20;
    int y = 40;
    char out = ' ';
    char current = 'S';
    for ( int i = 0 ; i < currentMap.map.length ; i++ ) {
      for ( int j = 0 ; j < currentMap.map[i].length ; j++ ) {
        // System.out.println( "" + currentMap.map[i][j] );
        if ( player.mapX == j && player.mapY == i ) {
          fill(255,0,0);
          text( 'P' , x , y );
          current = currentMap.map[i][j].place;
        }
        else {
          fill(0);
          text( currentMap.map[i][j].place , x , y );
        }
        x += 20;
      }
      y += 20;
      x = 20;
    }
    text( "Current Place: " + current , 20 , 20 );
  
  }
  
  public void keyPressed ( ) {
    if ( key == 'w' ) {
      if ( player.mapY > 0 ) {
        player.move(0,-1); //move up
      }
    }
    if ( key == 'a' ) {
      if ( player.mapX > 0 ) {
        player.move(-1,0); //move left
      }
    }
    if ( key == 's' ) {
      if ( player.mapY < currentMap.map.length ) {
        player.move(0,1); //move down
      }
    }
    if ( key == 'd' ) {
      if ( player.mapX < currentMap.map[0].length ) {
        player.move(1,0); //move right
      }
    }
  }
  
}
