import 'package:flutter/material.dart';
import 'package:shopping/src/color/color.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid(
      {super.key,
      required this.price,
      required this.ratting,
      required this.images});
  final List price;
  final List ratting;
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: price.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 1 / 3,
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          mainAxisExtent: 240,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 270,
            width: 155,
            child: Stack(
              children: [
                Card(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            images[index],
                            height: 180,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Price:${price[index]}",
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Ratting: ${ratting[index]}⭐".toString(),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Description:",
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart,
                                color: primaryColor,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 85,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
