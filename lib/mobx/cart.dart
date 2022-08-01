import 'package:devnology/entities/product.dart';
import 'package:mobx/mobx.dart';

part 'cart.g.dart';

class Cart = CartBase with _$Cart;

abstract class CartBase with Store {
  @observable
  List<Product> cartItems = ObservableList<Product>();

  int countItems() {
    return cartItems.length;
  }

  List<Product> getItems() {
    return cartItems;
  }

  @action
  void addItem(Product product) {
    cartItems.add(product);
  }

}