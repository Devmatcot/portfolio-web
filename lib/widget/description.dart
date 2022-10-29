
import 'package:flutter/material.dart';

import 'constant.dart';

class Description extends StatelessWidget {
  String text;
  String image;
  // double? width;
  var animate;
  Description(
      {Key? key,
      required this.text,
      // this.width = 400,
      required this.image,
      this.animate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(height/64.6),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 6,
          color: blackColor.withOpacity(0.2),
          offset: Offset(-1, 4),
        )
      ], color: bgColor, borderRadius: BorderRadius.circular(height/96.9)),
      child: Center(
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: height/19.38, width: height/19.38, child: Image.asset(image)),
              SizedBox(
                width: height/48.45,
              ),
              Text(
                text,
                style: TextStyle(color: whiteColor, fontSize: height/64.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}