import java.util.*;
import java.io.*;

public void setup ( ) {
  size(100, 100);
  background(255);
  String[] args = { "RPG" };
  ArrayList<Character> EnemyList = new ArrayList( );
  // String[] rawItems = loadStrings( "ItemList.csv" );
  Table rawEnemies = loadTable( "EnemyList.csv" , "header" );
  /*
  System.out.println( rawItems.getString(0,"name") + 
                      rawItems.getInt(0, "ATK" ) + 
                      rawItems.getInt(0, "DEF" ) + 
                      rawItems.getInt(0, "SPD" ) );
                      */
  // String[] tokens;
  // System.out.println( rawEnemies.getRowCount( ) );
  for ( int i = 0 ; i < rawEnemies.getRowCount( ) ; i++ ) {
    EnemyList.add( new Character( rawEnemies.getString(i,"name") ,
                                  rawEnemies.getInt(i,"hp") ,
                                  rawEnemies.getInt(i,"atk") ,
                                  rawEnemies.getInt(i,"def") ,
                                  rawEnemies.getInt(i,"spd") ,
                                  rawEnemies.getInt(i,"exp") ) );
    // System.out.println( EnemyList.get(i));
  }
  // Armor testItem = new Armor( "test" , 5);
  Map testMap = new Map (40, 40);
  int startY = testMap.map.length/2;
  int startX = testMap.map[0].length/2;
  if ( startY > 10 ) {
      startY = 10;
  }
  if ( startX > 10 ) {
      startX = 10;
  }
  Player player = new Player(startY, startX);
  // player.equip( testItem );
  // System.out.println(player);
  // player.unequip(testItem);
  // System.out.println(player);
  StatusWindow sw = new StatusWindow( player );
  PApplet.runSketch(args, sw);
  BattleWindow iw = new BattleWindow( player );
  PApplet.runSketch(args, iw);
  // player.equip( ItemList.get(0) );
  // player.equip( ItemList.get(1) );
  MapWindow mw = new MapWindow( testMap , player , EnemyList );
  PApplet.runSketch(args, mw);
  // player.battle( new Character( ) );
}
