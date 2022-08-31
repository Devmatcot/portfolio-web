import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/constant.dart';

class AppBarText extends StatefulWidget {
  String text;
  VoidCallback function;
  AppBarText({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  State<AppBarText> createState() => _AppBarTextState();
}

class _AppBarTextState extends State<AppBarText> {
  Color change = whiteColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      hitTestBehavior: HitTestBehavior.translucent,
      onEnter: (value) {
        setState(() {
          change = yellowColor;
        });
      },
      onExit: (value) {
        setState(() {
          change = whiteColor;
        });
      },
      child: GestureDetector(
        onTap: () {},
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 15,
            color: change,
            fontFamily: 'Poppins-Light',
          ),
        ),
      ),
    );
  }
}
