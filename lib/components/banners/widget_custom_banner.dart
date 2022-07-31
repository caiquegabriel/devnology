import 'package:flutter/material.dart';

class CustomBanner extends StatefulWidget {

  const CustomBanner({Key? key}) : super(key: key);

  @override
  CustomBannerState createState() => CustomBannerState();

}

class CustomBannerState extends State<CustomBanner> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 200,
    );
  }
}