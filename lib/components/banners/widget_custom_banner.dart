import 'package:devnology/components/widget_custom_image.dart';
import 'package:flutter/material.dart';

class CustomBanner extends StatefulWidget {
  final double width;
  final double height;
  final String image;

  const CustomBanner({Key? key, required this.width, required this.height, required this.image}) : super(key: key);

  @override
  CustomBannerState createState() => CustomBannerState();
}

class CustomBannerState extends State<CustomBanner> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: Colors.red,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: CustomImage(
        image: widget.image,
        fit: BoxFit.fill,
      ),
    );
  }
}