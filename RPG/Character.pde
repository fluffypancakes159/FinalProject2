public class Character {

  int atk;
  int def;
  int spd;
  int lvl;
  int exp;
  int gold;
  ArrayList<Item> inventory;
  
  public Character ( ) {
    atk = 10;
    def = 5;
    spd = 5;
    lvl = 1;
    exp = 0;
    gold = 10;
    inventory = new ArrayList<Item>( );
  }
  
  public String toString( ) {
    String out = "";
    out += "ATK: " + atk + "\n\n";
    out += "DEF: " + def + "\n\n";
    out += "SPD: " + spd + "\n\n";
    out += "EXP: " + exp + "\n\n";
    out += "LVL: " + lvl + "\n\n";
    out += "Gold: " + gold + "\n\n";
    out += inventory;
    return out;
  }
  
  public void getItem ( Item item ) {
    item.quantity += 1;
  }
  
}