import java.util.Scanner;

public class Map {
  
  Point[][]map;
  Point start = new Point( 0, 0, true );
  
  public Map ( ) {
    map = new Point[10][10];
  }
  
  public String toString ( ) {
    String out = "";
    for ( int i = 0 ; i < map.length ; i++ ) {
      for ( int j = 0 ; j < map[i].length ; j++ ) {
        if ( map[i][j] == null ) {
          out += '?';
        }
        else {
          out += map[i][j].place + ' ';
        }
      }
      out += "\n";
    }
    return out;
  }
  
  private class Point {
    int x, y;
    boolean explored;
    boolean seen;
    char place;
    
    public Point ( int x, int y ) {
      this ( x , y , '.' );
    }
    
    public Point ( int x, int y, char place ) {
      this.x = x;
      this.y = y;
      this.place = place;
      seen = true;
      explored = false;
    }
    
    public Point ( int x, int y, boolean start ) {
      this.x = x;
      this.y = y;
      seen = true;
      explored = start;
      place = 'S';
    }
    
    public void steppedOn ( ) {
      this.explored = true;
    }
    
  }
  
}