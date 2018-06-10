public class Restorative extends Item {

  int HP;
  
  public Restorative ( String name, int HP ) {
    super ( name );
    this.HP = HP;
  }
  
  public String toString ( ) {
    return name + "( Heals " + HP + " )";
  }
  
}
