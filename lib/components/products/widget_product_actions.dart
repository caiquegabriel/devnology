import 'package:devnology/components/buttons/widget_button_circled.dart';
import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class ProductActions extends StatefulWidget {

  final List<ButtonCircled> buttons;

  const ProductActions({Key? key, required this.buttons}) : super(key: key);

  @override
  ProductActionsState createState() => ProductActionsState();

}

class ProductActionsState extends State<ProductActions> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: MediaQuery.of(context).padding.bottom + 86,
        decoration: const BoxDecoration(
          color: primaryColorLigther
        ),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.buttons
          )
        )
      )
    );
  }
}