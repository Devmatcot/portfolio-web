import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  String title;
  String hintText;
  int? line;
  MessageInput(
      {Key? key, required this.title, required this.hintText, this.line = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(title),
        Container(
          // height: 50,
          width: 400,
          decoration: BoxDecoration(
              color: Color.fromARGB(10, 0, 0, 0),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              maxLines: line,
              decoration:
                  InputDecoration(hintText: hintText, border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }
}
