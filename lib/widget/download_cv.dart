import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constant.dart';

class DownloadCV extends StatefulWidget {
  const DownloadCV({super.key});

  @override
  State<DownloadCV> createState() => _DownloadCVState();
}

class _DownloadCVState extends State<DownloadCV> {
  // get yellowColor => null;
  Color change = bgColor;
  Color text = whiteColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      hitTestBehavior: HitTestBehavior.translucent,
      onEnter: (value) {
        setState(() {
          change = yellowColor;
          text = blackColor;
        });
      },
      onExit: (value) {
        setState(() {
          change = bgColor;
          text = whiteColor;
        });
      },
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 10, right: 10),
          height: 50,
          decoration: BoxDecoration(
              color: change,
               border: Border.all(color: yellowColor, width: 2)),
          child: Center(
            child: Text(
              'My Resume',
              style: TextStyle(color: text),
            ),
          ),
        ),
      ),
    );
  }
}
