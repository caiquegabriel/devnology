import 'package:devnology/helpers.dart';
import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;

  const CircleIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: proportion(context) * 101,
      height: proportion(context) * 101,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: primaryColor,
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        size: 37 * proportion(context),
        color: secondaryColor,
      ),
    );
  }
}