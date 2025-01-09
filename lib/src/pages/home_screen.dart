import 'package:flutter/material.dart';
import 'package:shopping/src/pages/HomePageProperties/category_list.dart';
import 'package:shopping/src/pages/HomePageProperties/freed_image.dart';
import 'package:shopping/src/pages/HomePageProperties/product_grid.dart';
import 'package:shopping/src/pages/HomePageProperties/product_listview.dart';
import 'package:shopping/src/pages/HomePageProperties/search_and_notification.dart';
import 'package:shopping/src/color/color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List name = [
    "Hoddie",
    "Jacket",
    "t-shirt",
  ];
  final List price = [
    "\$500",
    "\$700",
    "\$15",
  ];

  final List ratting = [
    4.5,
    4.0,
    3.8,
  ];
  final List person = [
    15,
    20,
    10,
  ];
  final List<String> images = [
    "images/jacket.webp",
    "images/sweater.webp",
    "images/t-shirt.webp"
  ];

  final List<String> category = ["All", "Recomended", "Top", "Category"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   // centerTitle: true,
      //   // title: Text(
      //   //   "HomePage",
      //   //   style: TextStyle(
      //   //     color: primaryColor,
      //   //   ),
      //   // ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                //search bar
                SearchAndNotification(),
                // freed images
                FreedImageHomePage(),

                //category

                CategoryList(category: category),

                SizedBox(
                  height: 7,
                ),

                // SizedBox(
                //   height: 5,
                // ),
                //product Listview
                ProductListview(
                  name: name,
                  price: price,
                  ratting: ratting,
                  person: person,
                  images: images,
                ),

                SizedBox(
                  height: 10,
                ),
                Text(
                  "Best sells",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                //product gridview
                ProductGrid(
                  price: price,
                  ratting: ratting,
                  images: images,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
