public class Item {

  int quantity;
  String name;
  
  public Item ( String name ) {
    quantity = 0;
    this.name = name;
  }
  
  public String toString ( ) {
    if ( quantity > 0 ) {
      return name + " x" + quantity;
    }
    return "";
  }
  
}