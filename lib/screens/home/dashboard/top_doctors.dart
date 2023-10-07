import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/data/models/doctors%20data.dart';
import 'package:setup/screens/home/appointment/doctors-details.dart';
import 'package:setup/screens/home/profile/profile.dart';
import 'package:setup/widgets/containers.dart';


class Doctors_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Doctors',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile() ,
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
              ]
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Reuseable_container1(doctorData: dummyDoctorData[0],),
                  SizedBox(width: 10,),
                  Reuseable_container1(doctorData: dummyDoctorData[1],),
                  SizedBox(width: 10,),
                  Reuseable_container1(doctorData: dummyDoctorData[2],),
                  SizedBox(width: 10,),
                  Reuseable_container1(doctorData: dummyDoctorData[3],),
                  SizedBox(width: 10,),
                  Reuseable_container1(doctorData: dummyDoctorData[4],),
                ],
              ),
            )
          ],
        ),)
      ]
    );
  }
}
