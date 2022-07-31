import 'package:devnology/style.dart';
import 'package:devnology/template/template_header_logo.dart';
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
      padding: const EdgeInsets.only(
        left: 25,
        right: 25
      ),
      width: double.infinity,
      height: templateHeaderHeight + MediaQuery.of(context).padding.top,
      decoration: const BoxDecoration(
        color: primaryColor
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            const TemplateHeaderLogo(),
            Expanded(
              child: Row(
                children: [

                ],
              ),
            )
          ],
        )
      ),
    );
  }

}