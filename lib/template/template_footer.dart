import 'package:devnology/style.dart';
import 'package:devnology/template/template_button.dart';
import 'package:flutter/cupertino.dart';

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
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.home,
                text: "Home",
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.search,
                text: "Search",
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.cart,
                text: "Cart",
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.person,
                text: "Profile",
              ),
            ),
            Expanded(
              child: TemplateButton(
                width: 50,
                height: 50,
                icon: CupertinoIcons.bars,
                text: "More",
              ),
            ),
          ],
        )
      ),
    );
  }

}