public void setup ( ) {
  size(500, 500);
  background(255);
  String[] args = { "RPG" };
  InputWindow iw = new InputWindow();
  UpdateWindow uw = new UpdateWindow();
  PApplet.runSketch(args, iw);
  PApplet.runSketch(args, uw);
}