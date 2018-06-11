import java.util.Scanner;

public class Map {
 
  // Player player;
  Point[][]map;
  Point start;
  int startX;
  int startY;
  
  public Map ( ) {
    this(20, 20);
    // this.player = player;
  }
  
  public Map ( int x, int y) {
    map = new Point[y][x];
    startX = x/2;
    startY = y/2;
    if ( x > 20 ) {
      startX = 10;
    }
    if ( y > 20 ) {
      startY = 10;
    }
    start = new Point( startY , startX , true );
    for ( int i = 0 ; i < map.length ; i++ ) {
      for ( int j = 0 ; j < map[i].length ; j++ ) {
        
        if ( Math.abs( startX - j ) + Math.abs( startY - i ) <= 3) { //vision radius of 3
          map[i][j] = new Point( i , j , '.');
        }
        else {
          map[i][j] = new Point( i , j , '?'); //unseen place
        }
        
      }
    }
    map[startY][startX] = start;
  }
  
  /*
  public String toString ( ) {
   
    String out = "";
    for ( int i = 0 ; i < map.length ; i++ ) {
      for ( int j = 0 ; j < map[i].length ; j++ ) {
        if ( map[i][j] == null ) {
          out += '?';
        }
        else {
          if ( map[i][j].place == '.' ) {
            out += ".  "; // two spaces for single dots
          }
          else {
            out += "" + map[i][j].place + " ";
          }
        }
      }
      out += "\n";
    }
    return out;
    
  }
  */
  
  private class Point {
    int x, y;
    int distFromStart;
    boolean explored;
    boolean seen;
    char place;
    
    public Point ( int x, int y ) {
      this ( x , y , '.' );
    }
    
    public Point ( int x, int y, char place_ ) {
      this.x = x;
      this.y = y;
      this.distFromStart = Math.abs(this.x - startX) + Math.abs(this.y - startY);
      this.place = place_;
      if ( place_ == '?' ) {
        seen = false;
      }
      else {
        seen = true;
      }
      explored = false;
    }
    
    public Point ( int x, int y, boolean start ) {
      this.x = x;
      this.y = y;
      this.distFromStart = Math.abs(this.x - startX) + Math.abs(this.y - startY);
      seen = true;
      explored = start;
      place = 'S';
    }
    
    public void steppedOn ( ) {
      this.explored = true;
    }
    
    public void generatePlace ( ) {
      int randomNum = (int)(Math.random( ) * 500); // 0-499
      // System.out.println( randomNum );
      if ( this.place == '?' ) {
        if ( randomNum < 470 ) {
          this.place = '.';
        }
        else if ( randomNum < 490 ) {
          if ( distFromStart < 30 ) {
            this.place = 'H';
          }
          else {
            this.place = 'L';
          }
        }
        else if ( randomNum < 495 ) {
          this.place = 'T';
        }
        else {
          if ( distFromStart >= 10 ) {
            this.place = 'O';
          }
          else {
            this.place = '.';
          }
        }
      }
    }
    
    public int resolvePoint ( ) {
      int difficulty = (int)(distFromStart / 7);
      if ( place == '.' ) {
        
      }
      if ( place == 'H' ) {
        difficulty += 1;
      }
      if ( place == 'T' ) {
        difficulty += 2;
      }
      if ( place == 'S' || place == 'O' ) {
        return -10;
      }
      if ( place == 'L' ) {
        difficulty += 3;
      }
      return difficulty;
    }
    
  }
  
  
  
}
