import java.util.*;
import java.io.*;

public void setup ( ) {
  size(100, 100);
  background(255);
  String[] args = { "RPG" };
  ArrayList<Item> ItemList = new ArrayList( );
  // String[] rawItems = loadStrings( "ItemList.csv" );
  Table rawItems = loadTable( "ItemList.csv" , "header" );
  /*
  System.out.println( rawItems.getString(0,"name") + 
                      rawItems.getInt(0, "ATK" ) + 
                      rawItems.getInt(0, "DEF" ) + 
                      rawItems.getInt(0, "SPD" ) );
                      */
  // String[] tokens;
  System.out.println( rawItems.getRowCount( ) );
  for ( int i = 0 ; i < rawItems.getRowCount( ) ; i++ ) {
    if ( rawItems.getString(i,"itemType").equals( "weapon" ) ) {
      ItemList.add( new Weapon( rawItems.getString(i,"name"), 
                                rawItems.getInt(i, "ATK" ), 
                                rawItems.getInt(i, "DEF" ), 
                                rawItems.getInt(i, "SPD" ) ) );
    }
    else if ( rawItems.getString(i,"itemType").equals( "armor" ) ) {
      ItemList.add( new Armor( rawItems.getString(i,"name"), 
                                rawItems.getInt(i, "ATK" ), 
                                rawItems.getInt(i, "DEF" ), 
                                rawItems.getInt(i, "SPD" ) ) );
    }
    else if ( rawItems.getString(i,"itemType").equals( "restorative" ) ) {
      ItemList.add( new Restorative( rawItems.getString(i,"name") , rawItems.getInt(i, "HP" ) ) );
    }
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
  // player.battle( new Character( ) );
  MapWindow mw = new MapWindow( testMap , player );
  PApplet.runSketch(args, mw);
}
