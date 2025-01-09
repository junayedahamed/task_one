import 'package:flutter/material.dart';
import 'package:shopping/src/color/color.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key, required this.category});
  final List category;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
