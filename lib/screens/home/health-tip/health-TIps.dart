import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/models/healthTip.dart';
import 'data-display.dart';

class HealthTip extends StatefulWidget {
  const HealthTip({super.key});

  @override
  State<HealthTip> createState() => _HealthTipState();
}

class _HealthTipState extends State<HealthTip> {
  late Timer _timer;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // Shuffle data initially
    data.shuffle();

    // Set up a timer to shuffle data every 24 hours
    _timer = Timer.periodic(Duration(hours: 24), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % data.length;
        data.shuffle();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('#Health Tips',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),),
          ),
        ),
        DataDisplayWidget(data[currentIndex]),
      ],
    );;
  }
}
