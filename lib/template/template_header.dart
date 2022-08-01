import 'package:devnology/style.dart';
import 'package:devnology/template/template_button.dart';
import 'package:devnology/template/template_header_logo.dart';
import 'package:flutter/cupertino.dart';

class TemplateHeader extends StatefulWidget {
  final bool? showBackButton;
  final TemplateButton? customButton;

  const TemplateHeader({Key? key, this.showBackButton, this.customButton}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (widget.showBackButton == true)
              ?
                TemplateButton(
                  width: 15,
                  iconSize: 20,
                  icon: CupertinoIcons.chevron_back,
                  onClick: () {
                    Navigator.of(context).pop();
                  },
                )
              :
                const SizedBox.shrink(),
            const TemplateHeaderLogo(),
            (widget.customButton != null)
              ?
                widget.customButton!
              :
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      TemplateButton(
                        width: 20,
                        margin: EdgeInsets.only(
                          right: 10
                        ),
                        iconSize: 20,
                        icon: CupertinoIcons.chat_bubble,
                      ),
                      TemplateButton(
                        width: 20,
                        margin: EdgeInsets.only(
                          left: 10
                        ),
                        iconSize: 20,
                        icon: CupertinoIcons.bell,
                      ),
                    ],
                  ),
                )
          ],
        )
      ),
    );
  }

}