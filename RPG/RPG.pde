public void setup ( ) {
  size(500, 500);
  background(255);
  String[] args = { "RPG" };
  InputWindow iw = new InputWindow();
  PApplet.runSketch(args, iw);
  Item testItem = new Item ( "test" );
  Character player = new Character ( );
  player.inventory.add( testItem );
  player.getItem( testItem );
  StatusWindow sw = new StatusWindow( player );
  PApplet.runSketch(args, sw);
}