import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class ProductFooter extends StatefulWidget {

  final List<Widget> children;

  final bool? safearea;

  const ProductFooter({Key? key, required this.children, this.safearea}) : super(key: key);

  @override
  ProductFooterState createState() => ProductFooterState();

}

class ProductFooterState extends State<ProductFooter> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: MediaQuery.of(context).padding.bottom + 86,
        decoration: const BoxDecoration(
          color: primaryColorLigther
        ),
        child: SafeArea(
          top: false,
          bottom: widget.safearea == true ? true : false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widget.children
          )
        )
      )
    );
  }
}