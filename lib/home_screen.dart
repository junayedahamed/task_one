import 'package:flutter/material.dart';
import 'package:shopping/color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List name = [
    "hoddie",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "HomePage",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                itemCount: price.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 250,
                    width: 260,
                    child: Stack(
                      children: [
                        Card(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "images/splash.jpg",
                                    height: 237,
                                    width: 115,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Description:",
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Price:${price[index]}",
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text(
                                            "${ratting[index]}" "⭐",
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
                                          ))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 140,
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
            ),
            SizedBox(
              height: 52,
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
              height: 5,
            ),
            Expanded(
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
                                    "images/splash.jpg",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
            )
          ],
        ),
      ),
    );
  }
}
