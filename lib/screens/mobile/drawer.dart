import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/widget/constant.dart';

import '../../services/services.dart';
import '../../widget/appbartext.dart';

class MobileDrawer extends StatelessWidget {
  // const MobileDrawer({super.key});
  ScrollController? scrollController;
  MobileDrawer({this.scrollController});

  Services callServices = Services();

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
          DrawerItems(
              icons: FontAwesomeIcons.house,
              tap: () {
                context.go('/home');
              },
              title: 'Home'),
          // DrawerItems(tap: (){context.go('/contact');},title: 'About', ),
          DrawerItems(
              icons: Icons.work_history,
              tap: () {
                context.go('/home');
                // Future.delayed(
                //   Duration(seconds: 2),
                //   () {

                //   },
                // );
                // scrollController.animateTo(4000,
                //     duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              title: 'Portfolio'),
          DrawerItems(
              icons: Icons.reviews,
              tap: () {
                context.go('/testimonies');
              },
              title: 'Testimonies'),
          DrawerItems(
              icons: Icons.contacts,
              tap: () {
                context.go('/contact');
              },
              title: 'Contact'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: whiteColor,
            ),
          ),
          DrawerItems(
              icons: FontAwesomeIcons.whatsapp,
              tap: () {
                // context.go('/contact');
                callServices.openUrl(whatsappLink);
              },
              title: 'Whatsapp'),
          DrawerItems(
              icons: FontAwesomeIcons.twitter,
              tap: () {
                // context.go('/contact');
                callServices.openUrl(twitterLink);
              },
              title: 'Twitter'),
          DrawerItems(
              icons: FontAwesomeIcons.linkedin,
              tap: () {
                // context.go('/contact');
                callServices.openUrl(linkedin);
              },
              title: 'Linkedin'),
          DrawerItems(
              icons: FontAwesomeIcons.github,
              tap: () {
                // context.go('/contact');
                callServices.openUrl(gitHubLink);
              },
              title: 'GitHub'),
        ],
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  String title;
  VoidCallback tap;
  IconData icons;
  DrawerItems({required this.title, required this.tap, required this.icons});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 30,
        // width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        child: FittedBox(
          child: Row(
            children: [
              Icon(
                icons,
                size: 30,
                color: whiteColor,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 30, color: whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
