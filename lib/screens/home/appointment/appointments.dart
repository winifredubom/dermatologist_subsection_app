import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/screens/home/appointment/appointment-tab.dart';
import 'package:setup/screens/home/appointment/doctors-details.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
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
                    // Navigate to the SeeAllScreen
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
            location: "",
            timeRange: "4:00 PM - 5:00 PM",
            imagePath: "lib/assets/images/doctor1.jpg", rating: null, // Replace with the actual image path
          ),
          // Add more AppointmentCard widgets for other appointments if needed
        ],
    );
  }
}
