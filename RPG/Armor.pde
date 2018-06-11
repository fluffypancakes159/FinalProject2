public class Armor extends Item{
    
  int ATK, DEF, SPD;
  boolean equipped;
  
  public Armor(String name, int Def){
    super(name); 
    DEF = Def;
  }
  
  public Armor( String name, int ATK, int DEF, int SPD ) {
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
  
  public int getDEF(){
    return DEF;
  }
  
  public void setDEF(int Def){
    DEF = Def;
  }
  
  public String toString ( ) {
    return name + " ( DEF: " + DEF + "   ATK: " + ATK + "   SPD: " + SPD + " )";
  }
  
    
}
