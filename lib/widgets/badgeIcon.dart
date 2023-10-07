import 'package:iconsax/iconsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
   Color badgeColor  = Colors.blueAccent;

  BadgeIcon({required this.badgeColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2
            )   ,
            shape: BoxShape.circle
          ) ,
          child: Icon(
            Iconsax.notification,
            color: Colors.blueGrey,
            size: 32,// Icon color
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width:20.0,
            height: 20.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: badgeColor, // Color of the badge
            ),
            child: Center(
              child: Text('9+',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600
              ),),
            ),
          ),
        ),
      ],
    );
  }
}