import 'package:devnology/components/widget_custom_image.dart';
import 'package:flutter/material.dart';

class ProductPreview extends StatefulWidget {
  const ProductPreview({Key? key}) : super(key: key);

  @override
  ProductPreviewState createState() => ProductPreviewState();
}

class ProductPreviewState extends State<ProductPreview> {

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const _ProductPhoto(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Text(
                    "TítuloTítuloTítuloTítuloTítulo TítuloTítuloTítulo Título"
                    ,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      height: 1.1
                    ),
                  ),
                  Text(
                    "R\$ 10.000,33",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3
                    ),
                  )
                ],
              ),
            )
          )
        ]
      ),
    );
  }
}









class _ProductPhoto extends StatelessWidget {

  const _ProductPhoto ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomImage(
      width: 80,
      height: 80,
      fit: BoxFit.fill,
    );
  }

}