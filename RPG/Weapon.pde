public class Weapon extends Item{
    
  int ATK, durability;
  boolean equipped;
  
  public Weapon(String name, int Atk, int rarity){
    super(name); 
    ATK = Atk;
    durability = rarity * 100;
  }
   
  public void equip(){
    equipped = true; 
  }
    
  public void use(){
    durability--;
  }
  
  public int getATK(){
    return ATK;
  }
  
  public void setATK(int Atk){
    ATK = Atk;
  }
    
}
