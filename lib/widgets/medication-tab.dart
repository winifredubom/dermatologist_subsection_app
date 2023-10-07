
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/models/medication-data.dart';

class DrugContainer extends StatelessWidget {
  final Drug drug;

  DrugContainer({
    required this.drug
  });
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: screenSize.width * 1,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                        Image.asset(
                          drug.imagePath,
                          width: 90,
                          height: 50,
                        ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                      drug.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(" ${drug.gramMilligram}", style: TextStyle(fontSize: 10),),
                    SizedBox(height: 5),
                  ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${drug.pills} pills", ),
                            Text('\$${drug.price}'),
                          ],
                        ),
                  OutlinedButton(
                      onPressed: () {
                        // Add to cart logic here
                      },
                      child: Text("Add to Cart"),
                    ),
                ],
              ),
            ),
      );
  }
}

