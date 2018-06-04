public void setup ( ) {
  size(500, 500);
  background(255);
  String[] args = { "RPG" };
  InputWindow iw = new InputWindow();
  PApplet.runSketch(args, iw);
  Armor testItem = new Armor( "test" , 5);
  Character player = new Character ( );
  player.equip( testItem );
  System.out.println(player);
  player.unequip(testItem);
  System.out.println(player);
  StatusWindow sw = new StatusWindow( player );
  PApplet.runSketch(args, sw);
}
