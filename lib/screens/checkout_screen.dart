import 'package:devnology/components/buttons/widget_button_circled.dart';
import 'package:devnology/components/widget_circle_icon.dart';
import 'package:devnology/helpers.dart';
import 'package:devnology/screens/screen_component.dart';
import 'package:devnology/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  CheckoutScreenState createState() => CheckoutScreenState();
}

class CheckoutScreenState extends State<CheckoutScreen> with ScreenComponent {
  
  @override
  Widget build(BuildContext context) {
    return content(
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      body: Container(
        margin: const EdgeInsets.all(0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 121
              ),
              child: const CircleIcon(
                icon: CupertinoIcons.check_mark,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30
              ),
              width: 280 * proportion(context),
              alignment: Alignment.center,
              child: const Text(
                "Order Placed!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: primaryColor
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 23,
                bottom: 80
              ),
              width: 280 * proportion(context),
              alignment: Alignment.center,
              child: const Text(
                "Your order was placed successfully. For more details, check All My Orders page under Profile tab",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: primaryColor
                ),
              ),
            ),
            ButtonCircled(
              width: 140,
              height: 40,
              fontSize: 14,
              iconSize: 18,
              text: "MY ORDERS",
              backgroundColor: primaryColor,
              textColor: Colors.white,
              icon: CupertinoIcons.chevron_right,
              onClick: () {
                navigatorPushNamed(context, '/orders');
              },
            )
          ],
        )
      ),
    );
  }
}