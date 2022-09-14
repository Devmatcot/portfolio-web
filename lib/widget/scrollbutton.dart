import 'package:flutter/material.dart';

class ScrollButton extends StatelessWidget {
  IconData icon;
  VoidCallback action;
   ScrollButton({
    Key? key,
    required this.icon,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Icon(
          icon,
          color: Colors.white,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black54,
        ),
      ),
    );
  }
}