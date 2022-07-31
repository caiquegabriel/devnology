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

  double _buttonSize = 65.00;
  double _titleSize = 15.00;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateProportion();
    });
  }


  /// Calcula a proporção de acordo com as dimensões no figma.
  /// No figma, as dimensõs do botão é de 65 px, para uma tela de 375px.
  /// Mas, em telas maiores, os botões ficavam pequenos e bem distantes, então necessita-se de um calculo pra manter a proporção.
  void _calculateProportion() {
    double proportion = MediaQuery.of(context).size.width / figmaAppWidth;

    setState(() {
      _buttonSize = _buttonSize * proportion;
      _titleSize = _titleSize * proportion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: GlobalKey(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: _buttonSize,
            height: _buttonSize,
            margin: const EdgeInsets.only(
              bottom: 8
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
            clipBehavior: Clip.antiAlias,
            child: CustomImage(
              width: _buttonSize,
              height: _buttonSize,
              image: widget.category.thumbnail,
              local: true,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            widget.category.name,
            style: TextStyle(
              fontSize: _titleSize,
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