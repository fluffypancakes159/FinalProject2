public abstract class Item {

  int quantity;
  String name;
  
  public Item ( String name ) {
    quantity = 0;
    this.name = name;
  }
  
  /*
  public Item ( String[] ary ) {
    name = ary[1];
    quantity = 0;
  }
  */
  
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
