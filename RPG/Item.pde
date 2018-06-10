public abstract class Item {

  int quantity, rarity;
  String name;
  
  public Item ( String name ) {
    quantity = 0;
    this.name = name;
  }
  
  public void use(int num){
    quantity -= num;
  }
  
  public String toString ( ) {
    if ( quantity > 0 ) {
      return name + " x" + quantity;
    }
    return "";
  }
  
}
