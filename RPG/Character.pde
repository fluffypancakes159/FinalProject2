public class Character {

  String name;
  int currenthp;
  int maxhp;
  int atk;
  int def;
  int spd;
  // int lvl;
  int exp;

  public Character ( ) {
    this ( "test" , 30 , 1 , 1 , 1 , 5);
  }

  public Character ( String name , int maxhp , int atk, int def, int spd, int exp ) {
    this.name = name;
    this.maxhp = maxhp; // + (int)(Math.random( ) * 11 - 5);
    currenthp = maxhp;
    this.atk = atk;
    this.def = def;
    this.spd = spd;
    this.exp = exp;
    if ( name.equals("Placeholder") ) {
      int roll1 = (int)(Math.random( ) * 7);
      int roll2 = (int)(Math.random( ) * 7);
      this.exp = roll1 + roll2;
    }
  }

  public String toString ( ) {
    return name;
  }

  public int getATK ( ) {
    return atk;
  }
  
  public int getDEF ( ) {
    return def;
  }
  
  public int getSPD ( ) {
    return spd;
  }
  
  public void attack ( Character other ) {
    int damage = getATK( ) - other.getDEF( );
    if ( damage <= 0 ) {
      damage = 1;
    }
    other.hurt( damage );
  }
  
  public void hurt ( int damage ) {
    currenthp -= damage;
  }

}
