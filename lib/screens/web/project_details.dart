import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/footer.dart';
import 'package:portfolio_web/widget/web_project_card.dart';

class ProjectDetails extends StatelessWidget {
  Map details;
  ProjectDetails({required this.details});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 500,
            color: details['color'],
            child: WebProjectcard(
              imageWidth: width / 2.13,
              Imageheigth: height / 1.38,
              showButton: false,
              projectName: details['name'],
              description: details['des'],
              firstImage: details['firstpic'],
              color: details['color'],
              projectImage: details['projectdp'],
              // decription: width / 3.84,
              decriptionWidth: 500,
            ),
          ),
          Container(
            height: height,
            color: whiteColor,
            width: double.infinity,
            child: Image.asset(
              // 'https://webkul.com/wp-content/uploads/2020/09/mobile-app-development-1.jpg'
              'assets/images/${details['projectdp']}.png',
              fit: BoxFit.cover,
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}
