import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              //search bar
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withValues(
                        alpha: 0.09,
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: primaryColor,
                        ),
                        border: InputBorder.none,
                        hintText: "Find your product",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withValues(
                        alpha: 0.09,
                      ),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              // freed images

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(
                          alpha: 0.5,
                        ),
                        blurRadius: 2.5,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "images/running.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //category

              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FittedBox(
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 18,
                          right: 15,
                        ),
                        margin: EdgeInsets.all(8),
                        height: 40,
                        // width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(
                            alpha: 0.05,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            category[index],
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: category.length,
                ),
              ),

              SizedBox(
                height: 7,
              ),

              // SizedBox(
              //   height: 5,
              // ),
              //product Listview
              SizedBox(
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
                                    "${ratting[index]}" "⭐(${person[index]})",
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
              ),
              SizedBox(
                height: 15,
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
              //product gridview
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
      ),
    );
  }
}
