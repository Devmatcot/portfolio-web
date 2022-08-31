import 'package:flutter/material.dart';

import 'package:portfolio_web/widget/constant.dart';

class MyStack extends StatelessWidget {
  String image;
   MyStack({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right:15.0),
      child: Container(
        
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(blurRadius: 6, color: whiteColor.withOpacity(0.4), offset: Offset(-1, 4), ), BoxShadow(blurRadius: 6, color: whiteColor.withOpacity(0.3), offset: Offset(1, -4)),]
        ),
        child: CircleAvatar(
          radius: 30,
          child: Container(
            height: 40,
            width: 40,
            child: Image.asset(image, fit: BoxFit.contain)),
          // backgroundImage: AssetImage(),
          backgroundColor: whiteColor,
        ),
      ),
    );
  }
}
