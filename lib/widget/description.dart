
import 'package:flutter/material.dart';

import 'constant.dart';

class Description extends StatelessWidget {
  String text;
  String image;
  double? width;
  var animate;
  Description(
      {Key? key,
      required this.text,
      this.width = 400,
      required this.image,
      this.animate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 6,
          color: blackColor.withOpacity(0.2),
          offset: Offset(-1, 4),
        )
      ], color: bgColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 50, width: 50, child: Image.asset(image)),
              SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(color: whiteColor, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}