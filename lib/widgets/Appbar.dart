
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'badgeIcon.dart';

class CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [ CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('lib/assets/images/woman.jpg'),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Good Morning',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Joy',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BadgeIcon(badgeColor: Colors.blueAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
