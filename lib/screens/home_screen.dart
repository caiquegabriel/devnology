import 'package:devnology/components/banners/widget_home_banners.dart';
import 'package:devnology/components/products/widget_category_preview_products.dart';
import 'package:devnology/components/products/widget_home_categories.dart';
import 'package:devnology/entities/category.dart';
import 'package:devnology/entities/product.dart';
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
                bottom: 10
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
            const HomeBanners(
              margin: EdgeInsets.only(
                left: 25,
                right: 25
              ),
            ),
            CategoryPreviewProducts(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25
              ),
              products: [
                Product(
                  thumbnail: "assets/images/products/3192783133_1SZ 1(1).png",
                  name: "Lenovo - IdeaPad L340 15 Gaming",
                  price: 717.80,
                  description: "1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520 \n Windows 10 Pro 64-Bit Edition \n 1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520"
                ),
                Product(
                  thumbnail: "assets/images/products/3000222362_PRD_1500_1 1(1).png",
                  name: "Lenovo 15.6' ThinkPad P15s Gen 1",
                  price: 1519.80,
                  description: "1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520 \n Windows 10 Pro 64-Bit Edition \n 1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520"
                ),
                Product(
                  thumbnail: "assets/images/products/ideapad-flex-i5-hero-subseries-br 1(1).png",
                  name: "Notebook Lenovo 2 em 1",
                  price: 4699.80,
                  description: "1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520 \n Windows 10 Pro 64-Bit Edition \n 1.8 GHz Intel Core i7-10510U Quad-Core Processor \n 16GB of DDR4 RAM | 512GB SSD \n 15.6' 1920 x 1080 IPS Display \n NVIDIA Quadro P520"
                ),
              ]
            )
          ],
        )
      )
    );
  }

}