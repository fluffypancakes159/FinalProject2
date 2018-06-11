public class MapWindow extends PApplet {

  ArrayList<Character> EnemyList;
  boolean setFrame = true;
  Map currentMap;
  Player player;
  int offsetX, offsetY;
  
  public MapWindow ( Map map, Player player , ArrayList<Character> EnemyList ) {
    this.currentMap = map;
    this.player = player;
    this.EnemyList = EnemyList;
    offsetX = 0;
    offsetY = 0;
  }
  
  public void settings() {
      size(600, 800);
  }
  
  public void draw ( ) { 
    if (!player.inBattle) {
      if (setFrame) {
        surface.setLocation(0, 0);
        setFrame = false;
      }
      background(255);
      outputMap( );
      // fill(0);
    }
  }
  
  public void outputMap ( ) {
    int x = 20;
    int y = 60;
    char out = ' ';
    char current = 'S';
    for ( int i = offsetY ; i < 20 + offsetY && i < currentMap.map.length ; i++ ) {
      for ( int j = offsetX ; j < 20 + offsetX && i < currentMap.map[i].length ; j++ ) {
        // System.out.println( "" + currentMap.map[i][j] );
        if ( player.mapX == j && player.mapY == i ) {
          fill(255,0,0);
          text( 'P' , x , y );
          // System.out.println(currentMap.map[i][j].place);
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
    text( "X: " + player.mapX + "    Y: " + player.mapY , 20 , 40 ); 
  }
  
  public void updateMap( ) {
    for ( int i = 0 ; i < currentMap.map.length ; i++ ) {
      for ( int j = 0 ; j < currentMap.map[i].length ; j++ ) {        
        if ( Math.abs( player.mapX - j ) + Math.abs( player.mapY - i ) <= 3) { //vision radius of 3
          currentMap.map[i][j].generatePlace( );
        }
        
      }
    }
  }
  
  public void keyPressed ( ) {
    if (!player.inBattle) {
      if ( key == 'w' || keyCode == UP ) {
        if ( player.mapY > 0 ) {
          player.move(0,-1); //move up
        }
        if ( player.mapY < offsetY ) {
          offsetY--;
        }
      }
      if ( key == 'a' || keyCode == LEFT ) {
        if ( player.mapX > 0 ) {
          player.move(-1,0); //move left
        }
        if ( player.mapX < offsetX ) {
          offsetX--;
        }
      }
      if ( key == 's' || keyCode == DOWN ) {
        if ( player.mapY < currentMap.map.length - 1) {
          player.move(0,1); //move down
        }
        if ( player.mapY >= offsetY + 20 ) {
          offsetY++;
        }
      }
      if ( key == 'd' || keyCode == RIGHT ) {
        if ( player.mapX < currentMap.map[0].length - 1 ) {
          player.move(1,0); //move right
        }
        if ( player.mapX >= offsetX + 20 ) {
          offsetX++;
        }
      }
      if ( key == ENTER ) {
        int output = currentMap.map[player.mapY][player.mapX].resolvePoint( );
        if ( output == -10 ) {
          player.currenthp = player.maxhp;
        }
        else if ( output == -20 ) {
          player.battle( EnemyList.get(8) );
          EnemyList.get(8).exp = (int)(Math.random( ) * 7) + (int)(Math.random( ) * 7);
        }
        else if ( output >= 0 ) {
          // System.out.println( EnemyList.get(output) );
          // System.out.println( EnemyList.get(output).currenthp );
          if ( output > 7 ) {
            player.battle( EnemyList.get(7) );
            EnemyList.get(7).currenthp = EnemyList.get(7).maxhp;
          }
          else {
            player.battle( EnemyList.get(output) );
            EnemyList.get(output).currenthp = EnemyList.get(output).maxhp;
          }
        }
      }
      updateMap( );
    }
  }
  
}
