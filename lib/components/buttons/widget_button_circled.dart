import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class ButtonCircled extends StatefulWidget {

  final String? text;

  final IconData icon;

  final double? iconSize;

  final Function? onClick;

  final bool? count;

  final double? width;

  final double? height;

  final Color? textColor;

  final Color? backgroundColor;

  const ButtonCircled({Key? key, this.textColor, this.backgroundColor, this.text, this.iconSize, required this.icon, this.onClick, this.count, this.width, this.height}) : super(key: key);

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
        width: widget.width ?? double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (widget.text != null)
              ?
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.text!,
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.textColor ?? Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  )
                )
              :
                const SizedBox.shrink(),
              Icon(
                widget.icon,
                size: widget.iconSize ?? 16,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}