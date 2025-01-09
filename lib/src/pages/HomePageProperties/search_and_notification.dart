import 'package:flutter/material.dart';
import 'package:shopping/src/color/color.dart';

class SearchAndNotification extends StatelessWidget {
  const SearchAndNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
