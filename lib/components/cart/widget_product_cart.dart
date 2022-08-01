import 'package:devnology/components/buttons/widget_button_circled.dart';
import 'package:devnology/components/widget_custom_image.dart';
import 'package:devnology/entities/product.dart';
import 'package:devnology/helpers.dart';
import 'package:devnology/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatefulWidget {
  final int count;
  final Product product;

  const ProductCart({Key? key, required this.product, required this.count}) : super(key: key);

  @override
  ProductCartState createState() => ProductCartState();
}

class ProductCartState extends State<ProductCart> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20
      ),
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      height: proportion(context) * 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProductPhoto(
            photo: widget.product.thumbnail,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        style: TextStyle(
                          fontSize: 11 * proportion(context),
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
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
                          style: TextStyle(
                            fontSize: 14 * proportion(context),
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            height: 1.3
                          ),
                        )
                      )
                    ],
                  ),
                )
              ),
              const _ProductCartActions()
            ],
          )
        ]
      )
    );
  }
}





class _ProductCartActions extends StatefulWidget {
  const _ProductCartActions({Key? key}) : super(key: key);

  @override
  _ProductCartActionsState createState() => _ProductCartActionsState();
}

class _ProductCartActionsState extends State<_ProductCartActions> {

  int count = 0;

  void add() {
    if(!mounted) return;
    setState(() {
      count +=1;
    });
  }

  void remove() {
    if(!mounted || count <= 1) return;
    setState(() {
      count -=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 5,
        top: 5
      ),
      height: 30,
      child: Row(
        children: [
          ButtonCircled(
            onClick: remove,
            width: 15 * proportion(context),
            height: 15 * proportion(context),
            padding: const EdgeInsets.all(0),
            backgroundColor: primaryColor,
            textColor: Colors.white,
            iconSize: 12 * proportion(context),
            mainAxisAlignment: MainAxisAlignment.center,
            icon: CupertinoIcons.minus,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 11,
              right: 11
            ),
            child: Text(
              count.toString()
            ),
          ),
          ButtonCircled(
            onClick: add,
            width: 15 * proportion(context),
            height: 15 * proportion(context),
            padding: const EdgeInsets.all(0),
            backgroundColor: primaryColor,
            textColor: Colors.white,
            iconSize: 12 * proportion(context),
            mainAxisAlignment: MainAxisAlignment.center,
            icon: CupertinoIcons.plus,
          )
        ],
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
      margin: const EdgeInsets.only(
        right: 22
      ),
      width: 100,
      height: 100,
      child: CustomImage(
        image: photo,
        local: true,
        width: 100,
        height: 100,
        fit: BoxFit.fill,
      )
    );
  }
}