import 'package:devnology/components/widget_custom_image.dart';
import 'package:flutter/material.dart';

class TemplateHeaderLogo extends StatefulWidget {

  const TemplateHeaderLogo({Key? key}) : super(key: key);

  @override
  TemplateHeaderLogoState createState() => TemplateHeaderLogoState();
}

class TemplateHeaderLogoState extends State<TemplateHeaderLogo> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: GlobalKey(),
      child: Container(
        margin: const EdgeInsets.all(0),
        child: const CustomImage(
          width: 170,
          height: 26.87,
          local: true,
          image: "assets/images/logo/logo.png",
          fit: BoxFit.contain,
        )
      )
    );
  }
}