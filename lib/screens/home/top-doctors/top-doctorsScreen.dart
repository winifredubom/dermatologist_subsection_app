import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/screens/home/appointment/appointment-tab.dart';

import '../appointment/doctors-details.dart';

class TopDoctors extends StatefulWidget {
  const TopDoctors({super.key});

  @override
  State<TopDoctors> createState() => _TopDoctorsState();
}

class _TopDoctorsState extends State<TopDoctors> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Section
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Appointments",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppointmentTab(),
                    ),
                  );
                },
                child: const Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ],
          ),
        ),
        // Appointment Card
        DoctorAppointmentItem(
          doctorName: "Dr. John Doe",
          section: "Dermatologist",
          location: "Location 1",
          timeRange: "4:00 PM - 5:00 PM",
          imagePath: "assets/doctor1.jpg",
        ),
      ],
    );
  }
}
