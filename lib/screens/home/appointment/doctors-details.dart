
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/star-Rating.dart';

//This screen shows the organization of data from the dummydoctor data

class DoctorAppointmentItem extends StatelessWidget {
  final String doctorName;
  final String section;
  final String location;
  final double? rating;
  final String timeRange;
  final String imagePath;

  DoctorAppointmentItem({
    required this.doctorName,
    this.section = 'Dermatologist',
    required this.location,
    required this.timeRange,
     this.rating,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 00, 10, 0),
      child: Container(
        width: screenSize.width * 1,
        height: screenSize.height * 0.15,// Wrap with Card
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,// Background color
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: Offset(0, 3), // Offset from top-left
            ),
          ]
        ), // Add elevation
        margin: EdgeInsets.only(bottom: 16.0),
        child: Padding( // Add padding to the content
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(imagePath), // Replace with your image
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      section,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: screenSize.width * 0.35,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black26
                      ),
                      child: ListView(
                        children: [Padding(
                          padding: const EdgeInsets.fromLTRB(8, 3, 0, 0),
                          child: Row(
                            children: [
                              Text(location, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                              Text( timeRange, style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),]
                      ),
                    ),
                  ],
                ),
              ),
              RatingBar(
                  rating: 2.0)

            ],
          ),
        ),
      ),
    );
  }
}