import 'package:devnology/mobx/cart.dart';
import 'package:devnology/screens/checkout_screen.dart';
import 'package:devnology/screens/home_screen.dart';
import 'package:devnology/screens/orders_screen.dart';
import 'package:devnology/screens/product_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{

  @override
  List<Bind> get binds => [
    Bind((i) => Cart(), isSingleton: true)
  ];

  /// rotas do módulo 
  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),
    ChildRoute('/product', child: (context, args) => ProductScreen(product: args.data['product'])),
    ChildRoute('/checkout', child: (context, args) => const CheckoutScreen()),
    ChildRoute('/orders', child: (context, args) => const OrdersScreen()),
  ];

}