import 'package:flutter/material.dart';

import 'package:portfolio_web/widget/constant.dart';

class MyCard extends StatelessWidget {
  String text;
  double? width;
  String image;
  String title;
  double? height;
  MyCard(
      {Key? key,
      required this.text,
      required this.image,
      required this.title,
      this.height,
      this.width })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: height ?? 400,
        width: width,
        padding: EdgeInsets.all(15),
        // color: Color.fromRGBO(135, 115, 238, 0.12),

        child: Column(
          children: [
            Image.asset(
              image,
              height: 70,
              width: 70,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            Text(
              text,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 15,
              textAlign: TextAlign.justify,
              // softWrap: true,
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(30, 77, 44, 241),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(31, 179, 175, 175), offset: Offset(0, 0)),
            BoxShadow(
                color: Color.fromARGB(31, 179, 175, 175),
                offset: Offset(6, 6),
                spreadRadius: 5,
                blurRadius: 3)
          ],
        ));
  }
}

class HorizontalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 500,
        // child: Text('My Card'),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(135, 115, 238, 0.12),
        ));
  }
}
