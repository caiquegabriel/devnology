import 'package:devnology/components/products/widget_product_preview.dart';
import 'package:devnology/components/titles/widget_title_h2.dart';
import 'package:devnology/components/widget_custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {

  const Loading({Key? key}) : super(key: key);

  @override
  LoadingState createState() => LoadingState();

}

class LoadingState extends State<Loading> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85)
      ),
      child: Container(
        child: const CustomImage(
          width: 80,
          height: 80,
          image: "assets/images/loading.gif",
        )
      ),
    );
  }
}