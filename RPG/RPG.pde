public void setup ( ) {
  size(500, 500);
  background(255);
  String[] args = { "RPG" };
  InputWindow iw = new InputWindow();
  PApplet.runSketch(args, iw);
  UsableItem testItem = new UsableItem( "test" );
  Character player = new Character ( );
  player.getItem( testItem );
  System.out.println(player);
  player.use(testItem, 1);
  System.out.println(player);
  StatusWindow sw = new StatusWindow( player );
  PApplet.runSketch(args, sw);
}
