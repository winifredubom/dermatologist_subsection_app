import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/screens/home/home_bottom_nav.dart';
import 'package:setup/screens/home/profile/profile.dart';
import 'package:setup/widgets/containers.dart';

import '../../../data/models/contact_data.dart';
import 'package:iconsax/iconsax.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
 return  Scaffold(
   backgroundColor: Colors.white,
   appBar: PreferredSize(
     preferredSize: Size.square(60),
     child: AppBar(
       leading: Padding(
         padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
         child: Card(
           elevation: 4,
           shape: CircleBorder(),
           child: IconButton(
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => BottomNav(),
                 ),
               );
             },
             icon: Icon(Iconsax.arrow_left_2, size: 25),
           ),
         ),
       ),
     ),
   ),
   body: Padding(
     padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
     child: SingleChildScrollView(
       child: Column(
         children: [
           Align(
             alignment: Alignment.center,
             child: Text('Contact Info',
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold
             ),),
           ),
           ReusableContainer(contactData: dummyContactData[0]),
           SizedBox(height: 20,),
           ReusableContainer(contactData: dummyContactData[1]),
           SizedBox(height: 20,),
           ReusableContainer(contactData: dummyContactData[2]),
           SizedBox(height: 20,),
           ReusableContainer(contactData: dummyContactData[3]),
           SizedBox(height: 20,),
           ReusableContainer(contactData: dummyContactData[4]),
           SizedBox(height: 20,),
           ReusableContainer(contactData: dummyContactData[5]),
           SizedBox(height: 20,),
           ReusableContainer(contactData: dummyContactData[6]),
           SizedBox(height: 20,),
           ReusableContainer(contactData: dummyContactData[7]),
         ],
       ),
     ),
   ),
 );
  }
}
