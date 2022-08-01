import 'package:devnology/components/buttons/widget_button_circled.dart';
import 'package:devnology/components/products/widget_product_footer.dart';
import 'package:devnology/components/titles/widget_title_h2.dart';
import 'package:devnology/helpers.dart';
import 'package:devnology/screens/screen_component.dart';
import 'package:devnology/style.dart';
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
        margin: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 30
        ),
        width: double.infinity,
        child: Column(
          children: [
            TitleH2(
              "Cart"
            )
          ],
        )
      ),
      betweenFooter: ProductFooter(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),
                ),
                Text(
                  priceFormat(12222.90),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
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