import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/screens/home/profile/contact-info.dart';
import 'package:setup/screens/home/profile/health-files.dart';
import 'package:setup/widgets/Appbar.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage(
                            'lib/assets/images/woman.jpg'),
                      ),
                      Container(
                        width: 30,
                        height: 50,
                        decoration:const  BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: const Icon(Iconsax.gallery_edit,
                            size: 18,),
                          onPressed: () {
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Center(
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Jaka Joko',
                            style: TextStyle(
                                color: Color(0xff2F1155),
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            ),),
                          SizedBox(width: 2,),
                          Icon(Iconsax.edit_2,
                            color: Color(0xff828282),
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactInfo(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 370,
                      height: 54,
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                height:45,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Icon(Iconsax.profile_circle,
                                  color: Colors.white,
                                  size: 24,),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 160),
                                child: Text('Contact Info',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                  ),),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                color: Color(0xff828282),
                                size: 15,)
                            ],
                          ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 370,
                      height: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height:45,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Icon(Iconsax.card,
                              color: Colors.white,
                              size: 24,),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 160),
                            child: Text('Card Details',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              ),),
                          ),
                          const Icon(Icons.arrow_forward_ios,
                            color: Color(0xff828282),
                            size: 15,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Health_files(),
                        ),
                      );
                    },
                    child: Container(
                      width: 370,
                      height: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height:45,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child:const  Icon(Iconsax.folder,
                              color: Colors.white,
                              size: 24,),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 210),
                            child: Text('Files',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              ),),
                          ),
                          const Icon(Icons.arrow_forward_ios,
                            color: Color(0xff828282),
                            size: 15,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      width: 370,
                      height: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height:45,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Icon(Iconsax.setting,
                              color: Colors.white,
                              size: 24,),
                          ),
                          const  Padding(
                            padding: EdgeInsets.only(right: 190),
                            child: Text('Settings',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              ),),
                          ),
                          const Icon(Icons.arrow_forward_ios,
                            color: Color(0xff828282),
                            size: 15,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 370,
                      height: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height:45,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child:const  Icon(Iconsax.logout4,
                              color: Colors.white,
                              size: 24,),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 190),
                            child: Text('Sign out',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              ),),
                          ),
                          const Icon(Icons.arrow_forward_ios,
                            color: Color(0xff828282),
                            size: 15,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
