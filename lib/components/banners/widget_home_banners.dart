import 'package:devnology/components/banners/widget_custom_banner.dart';
import 'package:devnology/components/titles/widget_title_h2.dart';
import 'package:devnology/helpers.dart';
import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class HomeBanners extends StatefulWidget {
  final EdgeInsets? margin;

  const HomeBanners({Key? key, this.margin}) : super(key: key);

  @override
  HomeBannersState createState() => HomeBannersState();

}

class HomeBannersState extends State<HomeBanners> {


  double _bannerHeight = 180;
  double _bannerWidth = 325;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    /// No figma, a dimensão do banner é de 325px x 180px, para uma tela de 375px
    /// Mas é necessário adaptar a dimensão de acordo com o tamanho da tela...
    /// Sendo necessário calcular a proporção e aplicar nas dimensões do banner
    _bannerHeight = _bannerHeight * proportion(context);
    _bannerWidth = _bannerWidth * proportion(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 25
      ),
      child: Column(
        children: [
          TitleH2(
            "Latest",
            margin: widget.margin
          ),
          Container(
            width: double.infinity,
            height: _bannerHeight + 20,
            child: GridView(
              padding: const EdgeInsets.only(
                bottom: 10,
                top: 10
              ),
              physics: const PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.1,
                /// 15 é o tamanho do banner seguinte que ficará visível.
                mainAxisExtent: _bannerWidth
              ),
              children: [
                CustomBanner(
                  key: GlobalKey(),
                  width: _bannerWidth,
                  height: _bannerHeight,
                  image: "assets/images/banners/banner_1.png"
                ),
                CustomBanner(
                  key: GlobalKey(),
                  width: _bannerWidth,
                  height: _bannerHeight,
                  image: "assets/images/banners/banner_1.png"
                )
              ],
            )
          )
        ],
      )
    );
  }
}