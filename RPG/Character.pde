public class Character {

  int currenthp;
  int maxhp;
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
    this(0, 0);
  }
  
  public Character ( int startY, int startX) {
    maxhp = 20;
    currenthp = maxhp;
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
    out += "HP: " + currenthp + " / " + maxhp + "\n";
    if ( equippedWeapon != null ) {
      out += "ATK: " + atk + " (+ " + equippedWeapon.ATK + ") \n";
    }
    else {
      out += "ATK: " + atk + "\n";
    }
    if ( equippedArmor != null ) {
      out += "DEF: " + def + " (+ " + equippedArmor.ATK + ") \n";
    }
    else {
      out += "DEF: " + def + "\n";
    }
    out += "SPD: " + spd + "\n";
    out += "EXP: " + exp + "\n";
    out += "LVL: " + lvl + "\n";
    out += "Gold: " + gold + "\n\n";
    if ( equippedWeapon != null ) {
      out += "Weapon: " + equippedWeapon + "\n";
    }
    else {
      out += "Weapon: Fists\n"; 
    }
    if ( equippedArmor != null ) {
      out += "Armor: " + equippedArmor + "\n";
    }
    else {
      out += "Armor: Skin\n\n"; 
    }
    out += "Inventory: " + inventory;
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
  
  public void use(Restorative item, int num){
    item.use(num);
    inventory.remove(item);
  }
  
  public void move ( int x, int y ) {
    this.mapX += x;
    this.mapY += y;
  }
  
}
