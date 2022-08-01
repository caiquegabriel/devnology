import 'package:devnology/components/buttons/widget_button_circled.dart';
import 'package:devnology/components/cart/widget_product_cart.dart';
import 'package:devnology/components/products/widget_product_footer.dart';
import 'package:devnology/components/titles/widget_title_h2.dart';
import 'package:devnology/entities/product.dart';
import 'package:devnology/helpers.dart';
import 'package:devnology/mobx/cart.dart';
import 'package:devnology/screens/screen_component.dart';
import 'package:devnology/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  OrdersScreenState createState() => OrdersScreenState();
}

class OrdersScreenState extends State<OrdersScreen> with ScreenComponent, AutomaticKeepAliveClientMixin {  
 
  @override
  bool get wantKeepAlive => true;

  Cart cart = Modular.get<Cart>();

  List<ProductCart> _productsCart = [];

  @override
  void initState() {
    super.initState();

    _loadCartProducts();
  }

  void _loadCartProducts() {
    cart.getItems().forEach((Product product) {
      _productsCart.add(
        ProductCart(
          product: product,
          count: product.quantity
        )
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return content(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 30
        ),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const TitleH2(
              "Cart",
              margin: EdgeInsets.only(
                bottom: 20
              )
            ),
          ] + _productsCart,
        )
      ),
      betweenFooter: ProductFooter(
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),
                ),
                Observer(
                  builder: (i) {
                    return Text(
                      priceFormat(cart.value),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      ),
                    );
                  }
                )
              ],
            )
          ),
          ButtonCircled(
            width: 140,
            height: 40,
            text: "CHECKOUT",
            backgroundColor: primaryColor,
            textColor: Colors.white,
            icon: CupertinoIcons.chevron_right,
            onClick: () {
              navigatorPushNamed(context, '/checkout');
            },
          ),
        ]
      )
    );
  }
}