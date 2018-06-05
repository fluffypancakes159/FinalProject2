public void setup ( ) {
  size(500, 500);
  background(255);
  String[] args = { "RPG" };
  InputWindow iw = new InputWindow();
  PApplet.runSketch(args, iw);
  // Armor testItem = new Armor( "test" , 5);
  Map testMap = new Map ( );
  int startY = testMap.map.length/2;
  int startX = testMap.map[0].length/2;
  Character player = new Character(startY, startX);
  // player.equip( testItem );
  // System.out.println(player);
  // player.unequip(testItem);
  // System.out.println(player);
  StatusWindow sw = new StatusWindow( player );
  PApplet.runSketch(args, sw);
  MapWindow mw = new MapWindow( testMap , player );
  PApplet.runSketch(args, mw);
}
