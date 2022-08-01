import 'package:devnology/screens/screen_component.dart';
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
          children: [
            Expanded(
              child: Container(

              )
            ),
          ],
        )
      ),
    );
  }
}