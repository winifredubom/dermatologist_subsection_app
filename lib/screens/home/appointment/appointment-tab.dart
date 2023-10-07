import 'dart:ui';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/screens/home/dashboard/home-screen.dart';
import 'package:setup/screens/home/home_bottom_nav.dart';

import '../../../data/models/doctors data.dart';
import 'doctors-details.dart';

//this is for the full Appointment content

class AppointmentTab extends StatefulWidget {
  @override
  _AppointmentTabState createState() => _AppointmentTabState();
}

class _AppointmentTabState extends State<AppointmentTab> {
  List<String> items = [
    'Ongoing',
    'Completed',
    'Cancelled',
  ];

  int current = 0;

  void _setCurrentIndex(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.square(60),
        child: AppBar(
          leading: Card(
            elevation: 4, // Adjust the elevation value as needed
            shape: CircleBorder(),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNav(),
                  ),
                );// Your icon button action here
              },
              icon: Icon(Iconsax.arrow_left_2, size: 25),
            ),
          ),
        ),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Appointments',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.1,
            width: screenSize.width * 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      _setCurrentIndex(index);
                    },
                    child: AnimatedContainer(
                      margin: EdgeInsets.all(5),
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.1,
                      decoration: BoxDecoration(
                        color: current == index ? Colors.blue : Colors.white54,
                        border: current == index
                            ? null
                            : Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      duration: Duration(milliseconds: 300),
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:
                            current == index ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: dummyDoctorData.length,
              itemBuilder: (context, index) {
                final doctor = dummyDoctorData[index];
                return  DoctorAppointmentItem(
                        doctorName: doctor.doctorName,
                        location: doctor.location,
                        timeRange: '',
                        imagePath: doctor.imagePath);
              },
            ),
          ),
        ],
      ),
    );
  }
}