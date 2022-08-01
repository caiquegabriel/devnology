import 'package:devnology/entities/product.dart';
import 'package:mobx/mobx.dart';

part 'cart.g.dart';

class Cart = CartBase with _$Cart;

abstract class CartBase with Store {
  @observable
  List<Product> cartItems = ObservableList<Product>();

  @observable
  double value = 0.0;

  int countItems() {
    return cartItems.length;
  }

  List<Product> getItems() {
    return cartItems;
  }

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
    Product? removeProduct;
    cartItems.forEach((p) {
      if (p.id == product.id) {
        if (p.quantity > 0) {
          p.quantity = p.quantity - 1;
        }
        if (p.quantity == 0) {
          removeProduct = p;
        }
      }
      count+=1;
    });
    if (removeProduct != null) {
      cartItems.remove(removeProduct);
    }
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