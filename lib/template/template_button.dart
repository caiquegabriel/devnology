import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class TemplateButton extends StatefulWidget {

  final String? text;

  final IconData icon;

  final double? iconSize;

  final double? fontSize;

  final Function? onClick;

  final int? count;

  final double? width;

  final double? height;

  final EdgeInsets? margin;

  const TemplateButton({Key? key, this.margin, this.text, this.fontSize, this.iconSize, required this.icon, this.onClick, this.count, this.width, this.height}) : super(key: key);

  @override
  TemplateButtonState createState() => TemplateButtonState();

}

class TemplateButtonState extends State<TemplateButton> {

  bool _current = false;

  void currentButton(bool current){  
    if(!mounted) return;  
    
    setState((){ 
      _current = current;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onClick != null){
          widget.onClick!();
        }
      },
      child: Container(
        margin: widget.margin ?? const EdgeInsets.all(0),
        width: widget.width,
        height: widget.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    child: Icon(
                      widget.icon,
                      size: widget.iconSize ?? 18,
                      color: _current == true ? countBadgeColor : Colors.white,
                    ),
                  ),
                  (widget.count != null)
                    ?
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 13,
                          height: 13,
                          alignment: Alignment.center,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: countBadgeColor,
                            borderRadius: BorderRadius.circular(100)
                          ),
                          child: Text(
                            widget.count!.toString(),
                            style: const TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                          ),
                        )
                      )
                    :
                      const SizedBox.shrink()
                ]
              )
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
                    style: TextStyle(
                      fontSize: widget.fontSize ?? 11,
                      color: _current == true ? countBadgeColor : Colors.white,
                      fontWeight: FontWeight.w400
                    ),
                  )
                )
              :
                const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}