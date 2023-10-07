import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;
  final double size;
  final int maxStars;

  RatingBar({
    required this.rating,
    this.size = 18,
    this.maxStars = 5, // Set a default number of stars
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> _starList = [];

    // Calculate the number of filled stars based on the rating
    int filledStars = rating.ceil();

    for (int i = 0; i < maxStars; i++) {
      if (i < filledStars) {
        _starList.add(Icon(Icons.star, color: Theme.of(context).primaryColor, size: size));
      } else {
        _starList.add(Icon(Icons.star, color: Colors.grey, size: size));
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _starList,
    );
  }
}
