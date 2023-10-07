import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data/models/medication-data.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late List<Drug> cartItems;

  @override
  void initState() {
    super.initState();
    cartItems = List<Drug>.from(medications);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: cartItems.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                final drug = cartItems[index];
                return ListTile(
                  leading: Image.asset(
                    drug.imagePath,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(drug.name),
                  subtitle: Text(drug.price),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (drug.pills > 1) {
                              drug.pills--;
                            }
                          });
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<CircleBorder>(CircleBorder()),
                          side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.grey)),
                        ),
                        child: Text(
                          "-", // Decrease button
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "-", // Decrease button
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            drug.pills++;
                          });
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<CircleBorder>(CircleBorder()),
                          side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.grey)),
                        ),
                        child: Text(
                          "+", // Increase button
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Total Price: \$${'16,000'}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)
                  ),
                  onPressed: () {
                  },
                  child: Text("Checkout", style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
