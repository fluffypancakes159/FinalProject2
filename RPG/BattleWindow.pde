import java.util.Arrays;

public class BattleWindow extends PApplet {

  boolean setFrame = true;
  boolean genString = true;
  Player player;
  String out = "";
  int x = 250;
  int y = 20;
  int time = 1;
  String randomString = "";
  
  public BattleWindow ( Player player ) {
    this.player = player;
  }
  
  public void settings() {
    size(600, 300);
  }
  
  public void draw ( ) { 
    if (setFrame) {
      surface.setLocation(650, 420);
      setFrame = false;
    }
    background(255);
    textSize(14);
    text("Player\nHP: " + player.currenthp + " / " + player.maxhp + "\nATK: " + player.getATK( ) + "\nDEF: " + player.getDEF( ) + "\nSPD: " + player.getSPD( ) , 20 , 20 );
    fill(69);
    if ( player.inBattle ) {
      if ( player.currenthp > 0 && player.currentEnemy.currenthp > 0 ) {
        if ( genString ) {
          generateString( );
          genString = false;
        }
        if ( time % 1000 == 0 ) {
          player.currentEnemy.attack( player );
        }
        Character enemy = player.currentEnemy;
        text(enemy.name + "     " + time + "\nHP: " + enemy.currenthp + " / " + enemy.maxhp + "\nATK: " + enemy.getATK( ) + "\nDEF: " + enemy.getDEF( ) + "\nSPD: " + enemy.getSPD( ) , x , y );
        text(randomString , 20 , 150) ;
        text(out, 20, 200);
        fill(69);
        time++;
      }  
      if ( player.currentEnemy.currenthp > 0 ) {
        player.inBattle = false;
        player.currentEnemy = null;
      }
    }
  }
  
  public void keyPressed ( ) {
    if ( player.inBattle ) {
      if ( key == BACKSPACE ) {
        if ( out.length( ) > 0 ) {
          out = out.substring( 0 , out.length() - 1); 
        }
      }
      else if ( key == ENTER ) {
        text( "enter" , 250 , 250);
        checkString( );
      }
      else {
        out += key;
      }
    }
  }
  
  public void generateString( ) {
    String characters = "qwertyuiopasdfghjklzxcvbnm1234567890";
    String out = "";
    int speedBuff = (int)(player.getSPD( ) * 1.25);
    for ( int i = 0 ; i < 30 - speedBuff - (int)(Math.random( ) * speedBuff + speedBuff / 2 ) ; i++ ) {
      out += characters.charAt( (int)(Math.random( ) * 36 ) );
    }
    randomString = out;
  }
  
  public void checkString ( ) {
    if ( out.equals( randomString ) ) {
      player.currentEnemy.currenthp -= player.getATK( );
      genString = true;
      out = "";
    }
  }
  
}
