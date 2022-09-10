import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/constant.dart';

class MessageInput extends StatelessWidget {
  String title;
  String hintText;
  double width;
  int? line;
  MessageInput(
      {Key? key, required this.title, required this.hintText, this.line = 1, this.width = 400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(title),
        SizedBox(height: 5),
        Container(
          // height: 50,
          width: width,
          decoration: BoxDecoration(
              color: Color.fromARGB(10, 0, 0, 0),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              maxLines: line,
              cursorColor: blackColor,
              decoration:
                  InputDecoration(hintText: hintText, border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }
}
