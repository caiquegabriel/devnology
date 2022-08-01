import 'package:devnology/components/buttons/widget_button_circled.dart';
import 'package:devnology/components/products/widget_product_photos.dart';
import 'package:devnology/entities/product.dart';
import 'package:devnology/helpers.dart';
import 'package:devnology/screens/screen_component.dart';
import 'package:devnology/style.dart';
import 'package:devnology/template/template_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/products/widget_product_actions.dart';

class ProductScreen extends StatefulWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  ProductScreenState createState() => ProductScreenState();
}

class ProductScreenState extends State<ProductScreen> with ScreenComponent {
  
  @override
  Widget build(BuildContext context) {
    return content(
      showBackButton: true,
      customHeaderButton: const TemplateButton(
        icon: CupertinoIcons.cart,
        width: 25,
        count: 2
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(0),
        width: double.infinity,
        child: Column(
          children: [
            _ProductName(
              name: widget.product.name
            ),
            ProductPhotos(
              product: widget.product,
            ),
            _ProductPrice(
              price: widget.product.price,
            ),
            _ProductAbout(
              description: widget.product.description,
            )
          ],
        ),
      ),
      customFooter: const ProductActions(
        buttons: [
          ButtonCircled(
            width: 140,
            height: 40,
            text: "SHARE THIS",
            icon: CupertinoIcons.chevron_up,
            textColor: primaryColorLigther,
          ),
          ButtonCircled(
            width: 140,
            height: 40,
            text: "ADD TO CART",
            backgroundColor: primaryColor,
            textColor: Colors.white,
            icon: CupertinoIcons.chevron_right
          ),
        ]
      )
    );
  }
}

class _ProductName extends StatelessWidget {
  final String name;

  const _ProductName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext contex) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 20,
        bottom: 10
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700
        )
      ),
    );
  }
}


class _ProductPrice extends StatelessWidget {
  final double price;

  const _ProductPrice({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext contex) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 8,
        bottom: 15
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Price:",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis
            )
          ),
          Text(
            priceFormat(price),
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              overflow: TextOverflow.ellipsis,
              color: primaryColor
            )
          ),
        ],
      )
    );
  }
}

class _ProductAbout extends StatelessWidget {
  final String description;

  const _ProductAbout({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext contex) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 8,
        bottom: 15
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 10
            ),
            child: const Text(
              "About this item:",
              maxLines: 2,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis
              )
            ),
          ),
          Text(
            description,
            maxLines: 6,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis,
              color: Colors.black
            )
          ),
        ],
      )
    );
  }
}