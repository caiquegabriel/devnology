import 'package:devnology/entities/product.dart';
import 'package:flutter/material.dart';

class ProductPhotos extends StatefulWidget {

  final Product product;

  const ProductPhotos({Key? key, required this.product}) : super(key: key);

  @override
  ProductPhotosState createState() => ProductPhotosState();

}

class ProductPhotosState extends State<ProductPhotos> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.85)
        ),
        child: Stack(
          children: [
          ]
        )
      )
    );
  }
}