import java.util.Arrays;
import java.util.Collections;

public class Player extends Character /* implements Battleable */ {

  // boolean playerTurn;
  boolean inBattle;
  boolean battleWon;
  // String currentWord; 
  int mapX;
  int mapY;
  ArrayList<Item> inventory;
  Weapon equippedWeapon;
  Armor equippedArmor;
  // ArrayList<Character> currentEnemies;
  Character currentEnemy;
  String battleAction;
  
  public Player ( ) {
    this(0, 0);
  }
  
  public Player ( int startY, int startX) {
    super ( "Player" , 20 , 10 , 5 , 0 , 1 , 0 );
    /* maxhp = 20;
    currenthp = 20; */
    mapX = startX;
    mapY = startY;
    inventory = new ArrayList<Item>( );
    inBattle = false;
    battleWon = false;
    // playerTurn = false;
    // System.out.println( this.currenthp );
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
      out += "DEF: " + def + " (+ " + equippedArmor.DEF + ") \n";
    }
    else {
      out += "DEF: " + def + "\n";
    }
    out += "SPD: " + spd + "\n";
    out += "EXP: " + exp + "\n";
    out += "LVL: " + lvl + "\n";
    // out += "Gold: " + gold + "\n\n";
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
  
  public void equip(Item equip){
    if ( equip instanceof Weapon ) {
      this.equippedWeapon = (Weapon)equip;
    }
    else if ( equip instanceof Armor ) {
      this.equippedArmor = (Armor)equip;
    }
  }
  
  public void unequipWeapon( ){
    this.equippedWeapon = null;
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
  
  public void battle ( Character enemy ) {
    inBattle = true;
    currentEnemy = enemy;
  }
  
  public int getATK ( ) {
    int output = atk;
    if ( equippedWeapon != null ) {
      output += equippedWeapon.ATK;
    }
    if ( equippedArmor != null ) {
      output += equippedArmor.ATK;
    }
    return output;
  }
  public int getDEF ( ) {
    int output = def;
    if ( equippedWeapon != null ) {
      output += equippedWeapon.DEF;
    }
    if ( equippedArmor != null ) {
      output += equippedArmor.DEF;
    }
    return output;
  }
  public int getSPD ( ) {
    int output = spd;
    if ( equippedWeapon != null ) {
      output += equippedWeapon.SPD;
    }
    if ( equippedArmor != null ) {
      output += equippedArmor.SPD;
    }
    return output;
  }
  
}
