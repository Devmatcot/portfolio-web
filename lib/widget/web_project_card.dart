import 'package:flutter/material.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/smallbutton.dart';
import "package:go_router/go_router.dart";

class WebProjectcard extends StatelessWidget {
  double Imageheigth;
  double decriptionWidth;
  double imageWidth;
  String projectName;
  String firstImage;
  String projectImage;
  String description;
  bool showButton;
  Color color;
  bool frontColor;
  WebProjectcard(
      {required this.Imageheigth,
      required this.decriptionWidth,
      required this.projectName,
      required this.firstImage,
      required this.projectImage,
      required this.description,
      required this.color,
      this.frontColor = false,
      this.showButton = true,
      required this.imageWidth});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: width / 9.6),
      padding: EdgeInsets.symmetric(horizontal: 50),

      // color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width / 64,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height / 51.6),
                child: Text(projectName.toUpperCase(),
                    style: TextStyle(
                        fontSize: height / 31.6,
                        fontWeight: FontWeight.bold,
                        color: frontColor ? Colors.black : whiteColor)),
              ),
              Container(
                width: decriptionWidth,
                padding: EdgeInsets.only(bottom: height / 41.6),
                child: Text(
                  // description,
                  'Something to read and know about the project done, this is a description of the project and click to read more about it contact me if you like it i will be glad to work with you, description of the project and click to read more about it contact me if you like it i will be glad to work with you',
                  style: TextStyle(
                      fontSize: height / 48.45,
                      color: frontColor ? Colors.black : whiteColor),
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (showButton) Spacer(),
              if (showButton)
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: SmallButton(
                    text: 'Learn More >>',
                    function: () {
                      context.go('/project_details', extra: {
                        'name': projectName,
                        'des': description,
                        'firstpic': firstImage,
                        'projectdp':projectImage,
                        'color': color,
                        
                      });
                      // context.goNamed('/project_details', {'':''});
                    },
                    showShadow: false,
                    padding: height / 92.9,
                  ),
                ),
            ],
          ),
          Spacer(),
          Container(
            height: Imageheigth,
            width: imageWidth,
            // color: Colors.black,
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(height / 41.6),
              child: Image.asset(
                // 'assets/images/display-pics.png',
                'assets/images/$firstImage.png',

                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
