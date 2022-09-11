import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/constant.dart';

class AppBarText extends StatefulWidget {
  String text;
  VoidCallback function;
  int id;
  double padding;

  // AppBarText({required this.function, ) : super(key: key);

  AppBarText({
    Key? key,
    required this.text,
    required this.id,
    this.padding = 0,
    required this.function,
  }) : super(key: key);

  @override
  State<AppBarText> createState() => _AppBarTextState();
}

class _AppBarTextState extends State<AppBarText> {
  myfunction(int id) {
    widget.function;
    if (1 == widget.id) {
      change = yellowColor;
    }
  }

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
        onTap: () {
          widget.function();
          myfunction(widget.id);
        },
        child: Padding(
          padding: EdgeInsets.all(widget.padding),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 15,
              color: change,
              decoration: 1 == widget.id
                  ? TextDecoration.combine([TextDecoration.underline])
                  : TextDecoration.none,
              fontFamily: 'Poppins-Light',
            ),
          ),
        ),
      ),
    );
  }
}
