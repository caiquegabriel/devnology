import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class TitleH2 extends StatefulWidget {

  final double? height;

  final String text;

  final EdgeInsets? margin;

  const TitleH2(this.text, {Key? key, this.height, this.margin}) : super(key: key);

  @override
  TitleH2State createState() => TitleH2State();

}

class TitleH2State extends State<TitleH2> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.only(
        bottom: 10
      ),
      height: widget.height ?? 35,
      width: double.infinity,
      child: Text(
        widget.text,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 30,
          color: primaryColor,
          fontWeight: FontWeight.w900
        ),
      )
    );
  }
}