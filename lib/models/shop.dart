import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/widgets.dart';

class Shop extends ChangeNotifier{
 //product for sale
final List<Product> _shop = [
  //product1
  Product(name: "Product 1", price: 99.99, description: "Item description........... more description described the product more info here will look like this",),

  Product(name: "Product 1", price: 99.99, description: "Item description",),

  Product(name: "Product 1", price: 99.99, description: "Item description",),
  Product(name: "Product 1", price: 99.99, description: "Item description",),


];


  //user cart
List<Product> _cart = [];


  //get product list
List<Product>  get shop => _shop;



  // get user cart
List<Product>  get cart => _cart;


  //add item to cart
  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
void removeFromCart(Product item){
    _cart.remove(item);
}
}