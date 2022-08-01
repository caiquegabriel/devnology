import 'package:devnology/components/products/widget_product_preview.dart';
import 'package:devnology/entities/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPreviewProducts extends StatefulWidget {
  final EdgeInsets? margin;
  
  final List<Product> products;

  const CategoryPreviewProducts({Key? key, this.margin, required this.products}) : super(key: key);

  @override
  CategoryPreviewProductsState createState() => CategoryPreviewProductsState();
}

class CategoryPreviewProductsState extends State<CategoryPreviewProducts> {

  double _childAspectRation = 10;
  final double _distance = 11;
  double _productHeight = 0;

  List<ProductPreview> _productsPreview = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      double productWidth = (MediaQuery.of(context).size.width / 3) - (_distance/2);
      double productHeight= productWidth / 0.748;

      /// No Figma, as dimensões dos cards do produto são de 101 x 135,
      /// fazendo com que a Width do card seja 0.748 vezes o Height (101/135 = 0.748)
      /// Então, o heigth deverá ser, aproximadamente, Width/0.748;

      setState(() {
        _childAspectRation = productWidth/productHeight;
        _productHeight = productHeight;
      });
    });

    _loadProducts();
  }

  void _loadProducts() {
    widget.products.forEach((Product product) {
      _productsPreview.add(
        ProductPreview(
          product: product
        )
      );
    });

    setState(() {
      _productsPreview = _productsPreview;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.all(0),
      width: double.infinity,
      height: _productHeight + 45,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: _distance,
          crossAxisSpacing: _distance,
          childAspectRatio: _childAspectRation
        ),
        children: _productsPreview
      )
    );
  }
}