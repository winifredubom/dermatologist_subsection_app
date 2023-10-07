import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../home_bottom_nav.dart';

class Health_files extends StatelessWidget {
  const Health_files({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.square(60),
        child: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 4,
                shape: CircleBorder(),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ),
                    );
                  },
                  icon: Icon(Iconsax.arrow_left_2, size: 25),
                ),
              ),
              Card(
                elevation: 4,
                shape: CircleBorder(),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ),
                    );
                  },
                  icon: Icon(Iconsax.arrow_left_2, size: 25),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
      children: [

      ],
      ),
    );
  }
}
