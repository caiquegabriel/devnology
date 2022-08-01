import 'package:devnology/components/widget_custom_image.dart';
import 'package:devnology/entities/product.dart';
import 'package:devnology/style.dart';
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
        child: Column(
          children: [
            CustomImage(
              width: 200,
              height: 200,
              local: true,
              image: widget.product.thumbnail,
            ),
            const PhotosMenu()
          ]
        )
      )
    );
  }
}


class PhotosMenu extends StatefulWidget {
  const PhotosMenu({Key? key}) : super(key: key);

  @override
  PhotosMenuState createState() => PhotosMenuState();
}

class PhotosMenuState extends State<PhotosMenu> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            PhotosMenuAction(
              current: true
            ),
            PhotosMenuAction(),
            PhotosMenuAction(),
          ]
        )
      )
    );
  }
}

class PhotosMenuAction extends StatelessWidget {
  final bool? current;

  const PhotosMenuAction({Key? key, this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        width: 10,
        height: 10,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: current == true ? primaryColor : const Color.fromRGBO(196, 196, 196, 1),
          borderRadius: BorderRadius.circular(100)
        ),
      )
    );
  }
}