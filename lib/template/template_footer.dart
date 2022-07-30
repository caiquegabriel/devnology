import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class TemplateFooter extends StatefulWidget {
  const TemplateFooter({Key? key}) : super(key: key);

  @override
  TemplateFooterState createState() => TemplateFooterState();
}

class TemplateFooterState extends State<TemplateFooter> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: templateFooterHeight + MediaQuery.of(context).padding.bottom,
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