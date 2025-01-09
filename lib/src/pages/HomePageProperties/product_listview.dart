import 'package:flutter/material.dart';
import 'package:shopping/src/color/color.dart';

class ProductListview extends StatelessWidget {
  const ProductListview(
      {super.key,
      required this.name,
      required this.price,
      required this.ratting,
      required this.person,
      required this.images});
  final List name;
  final List price;
  final List ratting;
  final List person;
  final List images;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      // color: Colors.amber,
      width: double.infinity,
      child: ListView.builder(
        itemCount: price.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 15),
            height: 180,
            width: 150,
            child: Column(
              children: [
                Stack(
                  children: [
                    // Card(
                    //   // child: Column(
                    //   //   children: [

                    //   //   ],
                    //   // ),
                    // ),
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          images[index],
                          height: 120,
                          width: 125,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // Spacer(),

                    Positioned(
                      top: 6,
                      right: 3,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          name[index],
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Price:${price[index]}",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(
                        //   width: 25,
                        // ),
                        Text(
                          "${ratting[index]}"
                          "⭐(${person[index]})",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: primaryColor,
                        )),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
