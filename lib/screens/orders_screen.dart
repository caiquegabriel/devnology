import 'package:devnology/components/products/widget_product_actions.dart';
import 'package:devnology/entities/product.dart';
import 'package:devnology/screens/screen_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  OrdersScreenState createState() => OrdersScreenState();
}

class OrdersScreenState extends State<OrdersScreen> with ScreenComponent {
  
  @override
  Widget build(BuildContext context) {
    return content(
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      body: Container(
        margin: const EdgeInsets.all(0),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(

              )
            ),
          ],
        )
      ),
      customFooter: ProductActions(
        product: Product()
      )
    );
  }
}