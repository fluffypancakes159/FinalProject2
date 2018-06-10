public class Weapon extends Item{
    
  int ATK, DEF, SPD, durability;
  boolean equipped;
  
  public Weapon(String name, int Atk){
    super(name); 
    ATK = Atk;
  }
   
  public Weapon( String name, int ATK, int DEF, int SPD ) {
    super ( name );
    this.ATK = ATK;
    this.DEF = DEF;
    this.SPD = SPD;
    equipped = false;
  }
   
  public void equip(){
    equipped = true; 
  }
    
  /*  
  public void use(){
    durability--;
  }
  */
  
  public int getATK(){
    return ATK;
  }
  
  public void setATK(int Atk){
    ATK = Atk;
  }
  
  public String toString ( ) {
    return name + "( ATK: " + ATK + "   DEF: " + DEF + "   SPD: " + SPD + " )";
  }
    
}
