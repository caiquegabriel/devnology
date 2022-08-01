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

  @observable
  double value = 0.0;

  @action
  void addItem(Product product) {
    bool exists = false;
    cartItems.forEach((p) {
      if (p.id == product.id) {
        p.quantity = p.quantity + 1;
        exists = true;
      }
    });
    if (!exists) cartItems.add(product);
    calculeTotalValue();
  }

  @action
  void removeItem(Product product) {
    int count = 0;
    cartItems.forEach((p) {
      if (p.id == product.id) {
        if (p.quantity > 1) {
          p.quantity = p.quantity - 1;
        } else {
          cartItems.removeAt(count);
        }
      }
      count+=1;
    });
    calculeTotalValue();
  }

   @action
  void calculeTotalValue() {
    double totalValue  = 0.0;
    cartItems.forEach((p) {
      double value = 0;
      value = p.quantity * p.price;

      totalValue += value;
    });
    value = totalValue;
  }

}