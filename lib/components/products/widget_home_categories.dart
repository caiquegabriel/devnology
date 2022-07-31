import 'package:devnology/components/products/widget_category_button.dart';
import 'package:devnology/components/titles/widget_title_h2.dart';
import 'package:devnology/entities/category.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatefulWidget {
  final List<Category> categories;
  final EdgeInsets? padding;

  const HomeCategories({Key? key, this.padding, required this.categories}) : super(key: key);

  @override
  HomeCategoriesState createState() => HomeCategoriesState();
}

class HomeCategoriesState extends State<HomeCategories> {

  List<CategoryButton> _categoriesButton = [];

  @override
  void initState() {
    super.initState();

    _loadHomeCategoriesButtons();
  }

  /// Populará os botões para as categorias consumindo os dados das entidades das categorias (name, thumbnail ...)
  void _loadHomeCategoriesButtons() {
    widget.categories.forEach((Category category) {
      _categoriesButton.add(
        CategoryButton(category: category)
      );
    });

    setState(() {
      _categoriesButton = _categoriesButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: const EdgeInsets.only(
        bottom: 22
      ),
      child: Column(
        children: [
          const TitleH2("Categories"),
          Container(
            margin: const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _categoriesButton
            ),
          )
        ],
      )
    );
  }
}