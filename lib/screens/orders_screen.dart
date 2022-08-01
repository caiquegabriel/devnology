import 'package:devnology/components/buttons/widget_button_circled.dart';
import 'package:devnology/components/cart/widget_product_cart.dart';
import 'package:devnology/components/products/widget_product_footer.dart';
import 'package:devnology/components/titles/widget_title_h2.dart';
import 'package:devnology/entities/product.dart';
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
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 30
        ),
        width: double.infinity,
        child: Column(
          children: [
            const TitleH2(
              "Cart",
              margin: EdgeInsets.only(
                bottom: 20
              )
            ),
            ProductCart(
              count: 1,
              product: Product(
                thumbnail: "assets/images/products/3000222362_PRD_1500_1 1(1).png",
                name: "Lenovo 15.6' ThinkPad P15s Gen 1",
                price: 1519.80,
                description: "1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520 \n Windows 10 Pro 64-Bit Edition \n 1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520"
              ),
            ),
            ProductCart(
              count: 1,
              product: Product(
                thumbnail: "assets/images/products/ideapad-flex-i5-hero-subseries-br 1(1).png",
                name: "Notebook Lenovo 2 em 1",
                price: 4699.80,
                description: "1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520 \n Windows 10 Pro 64-Bit Edition \n 1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520"
              ),
            ),
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