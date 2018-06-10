public class Armor extends Item{
    
  int DEF, durability;
  boolean equipped;
  
  public Armor(String name, int Def, int rarity){
    super(name); 
    DEF = Def;
    durability = rarity * 100;
  }
   
  public void equip(){
    equipped = true; 
  }
    
  public void use(){
    durability--;
  }
  
  public int getDEF(){
    return DEF;
  }
  
  public void setDEF(int Def){
    DEF = Def;
  }
    
}
