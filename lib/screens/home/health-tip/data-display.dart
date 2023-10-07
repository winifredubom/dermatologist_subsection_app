import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/models/healthTip.dart';

class DataDisplayWidget extends StatelessWidget {
  final DataItem dataItem;

  DataDisplayWidget(this.dataItem);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final isSvg = dataItem.imagePath.toLowerCase().endsWith('.svg');

    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: dataItem.bgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: Offset(0, 3), // Offset from top-left
            ),
          ],
        ),
        width: screenSize.width * 0.9,
        height: screenSize.height * 0.15,
        child:
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              child: isSvg
                  ? SvgPicture.asset(
                dataItem.imagePath,
                width: screenSize.width * 0.2,
                height: screenSize.height * 0.15,
              )
                  : Image.asset(
                dataItem.imagePath,
                width: screenSize.width * 0.2,
                height: screenSize.height * 0.15,
              ),),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  dataItem.text,
                  style: TextStyle(fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Text(dataItem.subText,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}