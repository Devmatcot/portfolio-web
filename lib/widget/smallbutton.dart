import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/constant.dart';

class SmallButton extends StatefulWidget {
  String text;
  bool showShadow;
  double padding;
  VoidCallback function;
  SmallButton({
    Key? key,
    required this.text,
    this.showShadow = true,
    required this.function,
    required this.padding
  }) : super(key: key);

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  Color change = yellowColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          change = Colors.amber;
        });
      },
      onExit: (event) {
        setState(() {
          change = yellowColor;
        });
      },
      child: GestureDetector(
        onTap: widget.function,
        child: Container(
          padding: EdgeInsets.all(widget.padding),
          child: Text(
            '  ${widget.text} ',
            style: TextStyle(color: blackColor),
          ),
          decoration: BoxDecoration(
              color: change,
              boxShadow: widget.showShadow
                  ? [
                      BoxShadow(
                        blurRadius: 6,
                        color: blackColor.withOpacity(0.4),
                        offset: Offset(4, 4),
                      )
                    ]
                  : [],
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

class LargeButton extends StatefulWidget {
  String text;
  double? width;
  VoidCallback function;
  LargeButton({
    Key? key,
    required this.text,
    this.width,
    required this.function,
  }) : super(key: key);

  @override
  State<LargeButton> createState() => _LargeButtonState();
}

class _LargeButtonState extends State<LargeButton> {
  Color change = Color(0xFF62BA1B);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          change = Color(0xFF3F8E00);
        });
      },
      onExit: (event) {
        setState(() {
          change = Color(0xFF62BA1B);
        });
      },
      child: GestureDetector(
        onTap: widget.function,
        child: Container(
          width: widget.width,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '  ${widget.text} ',
                style: TextStyle(color: whiteColor, fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              const Icon(Icons.send_rounded, color: Colors.white, size: 30)
            ],
          ),
          decoration: BoxDecoration(
              color: change,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 3,
                  color: Color(0xFF62BA1B).withOpacity(0.3),
                  // offset: Offset(0, -2)
                ),
                //  BoxShadow(
                // blurRadius: 6,
                // // spreadRadius: 3,
                // color: Color(0xFF62BA1B).withOpacity(0.5),
                // // offset: Offset(-2, 4)
                // )
              ],
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
