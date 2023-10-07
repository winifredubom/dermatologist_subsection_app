import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/screens/home/dashboard/top_doctors.dart';

import '../../../widgets/Appbar.dart';
import '../appointment/appointments.dart';
import '../health-tip/health-TIps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: CustomAppBar(), preferredSize: Size.fromHeight(70)),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HealthTip(),
              Container(
                  height: 200,
                  width: 400,
                  child: Appointments()),
              SizedBox(height: 10,),
              Container(
                child: Doctors_List(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
