import 'package:devnology/components/widget_custom_image.dart';
import 'package:devnology/entities/category.dart';
import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {

  final Category category;

  const CategoryButton({Key? key, required this.category}) : super(key: key);

  @override
  CategoryButtonState createState() => CategoryButtonState();
}

class CategoryButtonState extends State<CategoryButton> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: GlobalKey(),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            margin: const EdgeInsets.only(
              bottom: 8
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
            clipBehavior: Clip.antiAlias,
            child: CustomImage(
              image: widget.category.thumbnail,
            ),
          ),
          Text(
            widget.category.name,
            style: const TextStyle(
              fontSize: 15,
              color: primaryColor,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w400
            ),
          )
        ]
      )
    );
  }
}