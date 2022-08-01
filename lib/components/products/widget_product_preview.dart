import 'package:devnology/components/widget_custom_image.dart';
import 'package:devnology/entities/product.dart';
import 'package:devnology/helpers.dart';
import 'package:flutter/material.dart';

class ProductPreview extends StatefulWidget {
  final Product product;

  const ProductPreview({Key? key, required this.product}) : super(key: key);

  @override
  ProductPreviewState createState() => ProductPreviewState();
}

class ProductPreviewState extends State<ProductPreview> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigatorPushNamed(
          context,
          '/product',
          arguments: {
            'product' : widget.product
          }
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 6,
          bottom: 6
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ProductPhoto(
              photo: widget.product.thumbnail,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        height: 1.1
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 4
                      ),
                      child: Text(
                        priceFormat(widget.product.price),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          height: 1.3
                        ),
                      )
                    )
                  ],
                ),
              )
            )
          ]
        ),
      )
    );
  }
}









class _ProductPhoto extends StatelessWidget {

  final String photo;

  const _ProductPhoto ({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      width: double.infinity,
      height: 80,
      child: CustomImage(
        image: photo,
        local: true,
        width: 80,
        height: 80,
        fit: BoxFit.fill,
      )
    );
  }

}