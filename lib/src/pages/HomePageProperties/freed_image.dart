import 'package:flutter/material.dart';
import 'package:shopping/src/color/color.dart';

class FreedImageHomePage extends StatelessWidget {
  const FreedImageHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
