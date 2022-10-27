import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/widget/constant.dart';

import '../../widget/appbartext.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: double.infinity,
      backgroundColor: bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          DrawerItems(title: 'Home'),
          DrawerItems(title: 'Portfolio'),
          DrawerItems(title: 'Testimonies'),
          DrawerItems(title: 'Contact'),
          // DrawerItems(title: 'Home'),
          // AppBarText(function: (() {}), id: 1, text: 'Home'),
          // SizedBox(
          //   height: 50,
          // ),
          // AppBarText(
          //     function: (() {
          //       context.go('/contact');
          //     }),
          //     id: 2,
          //     text: 'Portfolio'),
          // AppBarText(
          //     function: (() {
          //       context.go('/contact');
          //     }),
          //     id: 3,
          //     text: 'Testimonies'),
          // AppBarText(
          //     function: (() {
          //       context.go('/contact');
          //     }),
          //     text: 'Contact',
          //     id: 4),
        ],
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  String title;
  DrawerItems({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      // width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

      child: FittedBox(
        child: Text(
          title,
          style: TextStyle(fontSize: 30, color: whiteColor),
        ),
      ),
    );
  }
}
