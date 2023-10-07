import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/widgets/star-Rating.dart';

import '../data/models/contact_data.dart';
import '../data/models/doctors data.dart';

class ReusableContainer extends StatelessWidget {
  final ContactData contactData;
  final double width;
  final double height;

  ReusableContainer({
    required this.contactData,
    this.height = 0.09,
    this.width = 1,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 1,
      height: screenSize.height * 0.09,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contactData.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),// Display the text from ContactData
              // You can apply styling here as needed
            ),
            Text(
              contactData.subText,
              style: TextStyle(
                fontWeight: FontWeight.w400
              ),// Display the subText from ContactData
              // You can apply styling here as needed
            ),
          ],
        ),
      ),
    );
  }
}

class Reuseable_container1 extends StatelessWidget {
  final DoctorData doctorData;

  Reuseable_container1({
     required this.doctorData,
});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
        width: screenSize.width * 0.4,
        height: screenSize.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 7 , 0),
    child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          CircleAvatar(
            radius: 40,
              backgroundImage: AssetImage(doctorData.imagePath)),
          Text(doctorData.doctorName),
        RatingBar(rating: doctorData.rating ?? 0),
      ]),
    ),));
  }
}

class Reuseable_container2 extends StatelessWidget {
    late final double width;
    final double height;
    final Icons? Icondata;
    final String text;

  Reuseable_container2({
    required this.width,
    required this.height,
    this.Icondata,
    required this.text});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
        width: screenSize.width * 0.2,
        height: screenSize.height * 0.09,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ]),));
  }
}