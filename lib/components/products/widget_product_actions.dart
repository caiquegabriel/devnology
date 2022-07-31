import 'package:devnology/entities/product.dart';
import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class ProductActions extends StatefulWidget {

  final Product product;

  const ProductActions({Key? key, required this.product}) : super(key: key);

  @override
  ProductActionsState createState() => ProductActionsState();

}

class ProductActionsState extends State<ProductActions> {

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            ],
          )
        )
      )
    );
  }
}