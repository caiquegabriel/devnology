import 'package:flutter/material.dart';

class ButtonCircled extends StatefulWidget {

  final String? text;

  final IconData? icon;

  final double? iconSize;

  final Function? onClick;

  final bool? count;

  final double? width;

  final double? height;

  final Color? textColor;

  final Color? backgroundColor;

  final double? fontSize;

  final double? borderRadius;

  final EdgeInsets? padding;

  final MainAxisAlignment? mainAxisAlignment;

  const ButtonCircled({Key? key, this.padding, this.mainAxisAlignment, this.fontSize, this.textColor, this.backgroundColor, this.text, this.iconSize, this.icon, this.onClick, this.count, this.width, this.height, this.borderRadius}) : super(key: key);

  @override
  ButtonCircledState createState() => ButtonCircledState();

}

class ButtonCircledState extends State<ButtonCircled> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onClick != null){
          widget.onClick!();
        }
      },
      child: Container(
        margin: const EdgeInsets.all(0),
        padding: widget.padding ?? const EdgeInsets.only(
          bottom: 10,
          top: 10,
          left: 20,
          right: 20
        ),
        width: widget.width ?? double.infinity,
        height: widget.height ?? 50,
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 100)
        ),
        child: Row(
          mainAxisAlignment: widget.mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (widget.text != null)
              ?
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.text!,
                    style: TextStyle(
                      fontSize: widget.fontSize ?? 12,
                      color: widget.textColor ?? Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  )
                )
              :
                const SizedBox.shrink(),
            (widget.icon != null)
              ?
                Icon(
                  widget.icon,
                  size: widget.iconSize ?? 16,
                  color: widget.textColor ?? Colors.white,
                )
              :
                const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}