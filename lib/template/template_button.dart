import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class TemplateButton extends StatefulWidget {

  final String? text;

  final IconData icon;

  final Function? onClick;

  final bool? count;

  const TemplateButton({Key? key, this.text, required this.icon, this.onClick, this.count}) : super(key: key);

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
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.85)
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              child: Column(
                children: const [

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