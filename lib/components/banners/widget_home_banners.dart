import 'package:devnology/components/banners/widget_custom_banner.dart';
import 'package:devnology/components/titles/widget_title_h2.dart';
import 'package:devnology/style.dart';
import 'package:flutter/material.dart';

class HomeBanners extends StatefulWidget {

  const HomeBanners({Key? key}) : super(key: key);

  @override
  HomeBannersState createState() => HomeBannersState();

}

class HomeBannersState extends State<HomeBanners> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        children: [
          const TitleH2(
            "Latest"
          ),
          Container(
            color: Colors.purple,
            width: double.infinity,
            height: 180,
            child: GridView(
              padding: const EdgeInsets.all(0),
              physics: const PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                //mainAxisExtent: 10,
                childAspectRatio: 0.1,
                /// Fará um calculo pra seguir a propoção de acorodo com o Figma.
                /// 325 px é o tamanho do banner
                /// 15 é o tamanho do banner seguinte que ficará visível.
                mainAxisExtent: (MediaQuery.of(context).size.width / figmaAppWidth) * 325 - 15
              ),
              children: const [
                CustomBanner(),
                CustomBanner(),
                CustomBanner(),
                CustomBanner(),
                CustomBanner(),
                CustomBanner(),
              ],
            )
          )
        ],
      )
    );
  }
}