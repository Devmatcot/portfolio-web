import 'package:flutter/material.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/model/project_model.dart';
import 'package:portfolio_web/widget/smallbutton.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:go_router/go_router.dart";

class Projectcard extends StatelessWidget {
  double heigth;
  double decriptionWidth;
  ProjectModel model;
  Projectcard(
      {required this.heigth,
      required this.decriptionWidth,
      required this.model});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heigth,
            // width: 400,
            // color: model.color,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(height / 41.6),
              child: Image.asset(
                'assets/images/${model.detailImage}.png',
                // 'https://th.bing.com/th/id/R.f1b1fc80248dbc77477a51e012c9c416?rik=p2UlqqTS%2bWQCqw&pid=ImgRaw&r=0',
                fit: BoxFit.cover,
              ),
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(30),
            // )
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height / 51.6),
            child: Text(model.projectName,
                style: TextStyle(
                    fontSize: height / 41.6, fontWeight: FontWeight.bold)),
          ),
          Container(
              width: decriptionWidth,
              padding: EdgeInsets.only(bottom: height / 41.6),
              child: Text(
                'Something to read and know about the project done, this is a description of the project and click to read more about it contact me if you like it i will be glad to work with you, description of the project and click to read more about it contact me if you like it i will be glad to work with you',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              )),
          SmallButton(
            text: 'Learn More >>',
            function: () {
              context.go('/mproject_details', extra: {
                'name': model.projectName,
                'des': model.projectDetails,
                'firstpic': model.firstImage,
                'projectdp': model.detailImage,
                'color': model.color,
                'listpic':model.listImage
              });
            },
            showShadow: false,
            padding: height / 92.9,
          )
        ],
      ),
    );
  }

  // Future<void> _launchUrl(_url) async {
  //   if (!await launchUrl(_url)) {
  //     throw 'Could not launch $_url';
  //   }
  // }
}
