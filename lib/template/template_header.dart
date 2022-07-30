import 'package:devnology/screens/screen_component.dart';
import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class TemplateHeader extends StatefulWidget {
  const TemplateHeader({Key? key}) : super(key: key);

  @override
  TemplateHeaderState createState() => TemplateHeaderState();
}

class TemplateHeaderState extends State<TemplateHeader> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: templateHeaderHeight + MediaQuery.of(context).padding.top,
      decoration: const BoxDecoration(
        color: primaryColor
      ),
      child: const SafeArea(
        bottom: false,
        child: Text("..."),
      ),
    );
  }

}