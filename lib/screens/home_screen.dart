import 'package:devnology/components/banners/widget_home_banners.dart';
import 'package:devnology/components/products/widget_category_preview_products.dart';
import 'package:devnology/components/products/widget_home_categories.dart';
import 'package:devnology/entities/category.dart';
import 'package:devnology/screens/screen_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with ScreenComponent {
  
  @override
  Widget build(BuildContext context) {
    return content(
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            HomeCategories(
              padding: const EdgeInsets.only(
                top: 30,
                left: 25,
                right: 25,
                bottom: 12
              ),
              categories: [
                Category(
                  name: "Apparel",
                  thumbnail: "assets/images/categories/category_apparel.png"
                ),
                Category(
                  name: "Beauty",
                  thumbnail: "assets/images/categories/category_beauty.png"
                ),
                Category(
                  name: "Shoes",
                  thumbnail: "assets/images/categories/category_shoes.png"
                ),
                Category(
                  name: "See All",
                  thumbnail: "assets/images/categories/category_see_more.png"
                ),
              ],
            ),
            HomeBanners(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 10
              ),
            ),
            CategoryPreviewProducts(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25
              ),
            )
          ],
        )
      )
    );
  }

}