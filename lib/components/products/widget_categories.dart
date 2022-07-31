import 'package:devnology/components/products/widget_category_button.dart';
import 'package:devnology/entities/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {

  final List<Category> categories;

  const Categories({Key? key, required this.categories}) : super(key: key);

  @override
  CategoriesState createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {

  List<CategoryButton> _categoriesButton = [];

  @override
  void initState() {
    super.initState();

    _loadCategoriesButtons();
  }

  /// Populará os botões para as categorias consumindo os dados das entidades das categorias (name, thumbnail ...)
  void _loadCategoriesButtons() {
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
      decoration: const BoxDecoration(
        color: Colors.red
      ),
      child: Row(
        children: _categoriesButton
      ),
    );
  }
}