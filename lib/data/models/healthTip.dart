import 'dart:ui';

import 'package:flutter/material.dart';

class DataItem {
  final String imagePath;
  final String text;
  final String subText;
  final Color bgColor;

  DataItem({
    required this.imagePath,
    required this.text,
    this.bgColor = Colors.white,
    required this.subText
  });
}

List<DataItem> data =[
  DataItem(
    imagePath: 'lib/assets/images/cleanse face.svg',
    text: 'Face Skin Care Tip #1: ',
    bgColor: Colors.white,
    subText: 'Always cleanse your face before bedtime\n to remove makeup and impurities.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/cream hands.jpg',
    text: 'Arm Skin Care Tip #1:',
    bgColor: Colors.white,
    subText: 'Exfoliate your arms regularly to remove\n dead skin cells and promote smoother skin.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/35009.jpg',
    text: 'Leg Skin Care Tip #1: .',
    bgColor: Colors.white,
    subText: 'Stay hydrated to maintain healthy\n and moisturized leg skin',
  ),
  DataItem(
    imagePath: 'lib/assets/images/sunscreen.svg',
    text: 'Face Skin Care Tip #2:',
    bgColor: Colors.white,
    subText: ' Use sunscreen daily to protect\n your face from harmful UV rays.',
  ),
  DataItem(
    imagePath:'lib/assets/images/cream hands.jpg',
    text: 'Arm Skin Care Tip #2: ',
    bgColor: Colors.white,
    subText: 'Apply a moisturizer after showering\n to lock in moisture and prevent dryness.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/8690781.jpg',
    text: 'Leg Skin Care Tip #2: ',
    bgColor: Colors.white,
    subText: ' Avoid hot showers, as they can strip\n natural oils from your legs, leading to\n dryness.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/cream face.svg',
    text: 'Face Skin Care Tip #3: ',
    bgColor: Colors.white,
    subText: 'Don\'t forget to moisturize your face daily,\n even if you have oily skin.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/long sleeve.svg',
    text: 'Arm Skin Care Tip #3: ',
    bgColor:Colors.white,
    subText: 'Wear long sleeves when exposed to\n the sun to prevent sunburn and\n premature aging.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/cleanse face.svg',
    text: 'Leg Skin Care Tip #3: ',
    bgColor: Colors.white,
    subText: 'Massage your legs with lotion to improve\n circulation and reduce the appearance of\n cellulite.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/sleep.jpg',
    text: 'Face Skin Care Tip #4: ',
    bgColor: Colors.white,
    subText: 'Get enough sleep to allow your skin\n to repair and rejuvenate itself.',
  ),
  DataItem(
    imagePath: 'lib/assets/images/skin changes.jpg',
    text: 'Skin Care Reminder: ',
    bgColor: Colors.white,
    subText: 'If you notice changes in your skin,\n such as unusual rashes or discoloration,\n consult a healthcare professional.',
  ),
];