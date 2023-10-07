import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/screens/home/medicals/pharmacy-tab.dart';
import 'package:iconsax/iconsax.dart';
import 'package:setup/widgets/medication-tab.dart';
import '../../../data/models/medication-data.dart';
import '../home_bottom_nav.dart';

class MedicalsScreen extends StatefulWidget {
  const MedicalsScreen({super.key});

  @override
  State<MedicalsScreen> createState() => _MedicalsScreenState();
}

class _MedicalsScreenState extends State<MedicalsScreen> {
  List<String> items1 = [
    'Medications',
    'Pharmacy',
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

    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.square(60),
          child: AppBar(
            leading: Card(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Medicals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.1,
              width: screenSize.width * 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items1.length,
                itemBuilder: (ctx, index){
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
                          items1[index],
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
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,),
                scrollDirection: Axis.vertical,
                itemCount: medications.length,
                itemBuilder: (context, index) {
                  return  Padding(
                      padding: const EdgeInsets.all(0.0),
                      child:
                      DrugContainer(drug: medications[0],),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
