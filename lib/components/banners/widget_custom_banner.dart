import 'package:devnology/components/widget_custom_image.dart';
import 'package:devnology/style.dart';
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
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black.withOpacity(0.01),
        ),
        boxShadow: const [ligthShadow],
        borderRadius: BorderRadius.circular(10)
      ),
      child: CustomImage(
        local: true,
        image: widget.image,
        fit: BoxFit.fill,
      ),
    );
  }
}