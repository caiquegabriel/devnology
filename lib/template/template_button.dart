import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class TemplateButton extends StatefulWidget {

  final String? text;

  final IconData icon;

  final double? iconSize;

  final Function? onClick;

  final bool? count;

  final double? width;

  final double? height;

  const TemplateButton({Key? key, this.text, this.iconSize, required this.icon, this.onClick, this.count, this.width, this.height}) : super(key: key);

  @override
  TemplateButtonState createState() => TemplateButtonState();

}

class TemplateButtonState extends State<TemplateButton> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onClick != null){
          widget.onClick!();
        }
      },
      child: Container(
        width: widget.width ?? double.infinity,
        height: widget.height ?? double.infinity,
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    size: widget.iconSize ?? 16,
                    color: Colors.white,
                  ),
                  (widget.text != null)
                    ?
                      Container(
                        margin: const EdgeInsets.only(
                          top: 6
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          widget.text!,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      )
                    :
                      const SizedBox.shrink()
                ],
              ),
            ),
            (widget.count != true)
              ?
                Positioned(
                  child: Container(
                    width: 13,
                    height: 13,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: countBadgeColor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Text(
                      widget.count!.toString(),
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  )
                )
              :
                const SizedBox.shrink()
          ]
        )
      )
    );
  }
}