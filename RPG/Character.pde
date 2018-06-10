public class Character {

  int hp;
  int atk;
  int def;
  int spd;
  int lvl;
  int exp;
  int gold;
  int mapX;
  int mapY;
  ArrayList<Item> inventory;
  Weapon equippedWeapon;
  Armor equippedArmor;
  
  public Character ( ) {
    hp = 100;
    atk = 10;
    def = 5;
    spd = 5;
    lvl = 1;
    exp = 0;
    gold = 10;
    mapX = 0;
    mapY = 0;
    inventory = new ArrayList<Item>( );
  }
  
  public Character ( int startY, int startX) {
    hp = 100;
    atk = 10;
    def = 5;
    spd = 5;
    lvl = 1;
    exp = 0;
    gold = 10;
    mapX = startX;
    mapY = startY;
    inventory = new ArrayList<Item>( );
  }
  
  public String toString( ) {
    String out = "";
    out += "HP: " + hp + "\n\n";
    out += "ATK: " + atk + "\n\n";
    out += "DEF: " + def + "\n\n";
    out += "SPD: " + spd + "\n\n";
    out += "EXP: " + exp + "\n\n";
    out += "LVL: " + lvl + "\n\n";
    out += "Gold: " + gold + "\n\n";
    if ( equippedWeapon != null ) {
      out += "Weapon: " + equippedWeapon + "\n\n";
    }
    else {
      out += "Weapon: Fists\n\n"; 
    }
    if ( equippedWeapon != null ) {
      out += "Armor: " + equippedArmor + "\n\n";
    }
    else {
      out += "Armor: Skin\n\n"; 
    }
    out += inventory;
    return out;
  }
  
  public void getItem ( Item item ) {
    item.quantity += 1;
    inventory.add(item);
  }
  
  public void equip(Weapon wpn){
    this.equippedWeapon = wpn;
  }
  
  public void unequipWeapon( ){
    this.equippedWeapon = null;
  }
  
  public void equip(Armor amr){
    this.equippedArmor = amr;
  }
  
  public void unequipArmor( ){
    this.equippedArmor = null;
  }
  
  public void use(UsableItem item, int num){
    item.use(num);
    inventory.remove(item);
  }
  
  public void move ( int x, int y ) {
    this.mapX += x;
    this.mapY += y;
  }
  
}
