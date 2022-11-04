import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/smallbutton.dart';

class Projectcard extends StatelessWidget {
  double heigth;
  double decription;
  Projectcard({required this.heigth, required this.decription});
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(height/41.6),
              child: Image.network(
                'https://th.bing.com/th/id/R.f1b1fc80248dbc77477a51e012c9c416?rik=p2UlqqTS%2bWQCqw&pid=ImgRaw&r=0',
                fit: BoxFit.cover,
              ),
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(30),
            // )
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height/51.6),
            child: Text('Project Name',
                style: TextStyle(fontSize: height/41.6, fontWeight: FontWeight.bold)),
          ),
          Container(
              width: decription,
              padding: EdgeInsets.only(bottom: height/41.6),
              child: Text(
                'Something to read and know about the project done, this is a description of the project and click to read more about it contact me if you like it i will be glad to work with you, description of the project and click to read more about it contact me if you like it i will be glad to work with you',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              )),
          SmallButton(
            text: 'Learn More >>',
            function: () {},
            showShadow: false,
            padding: height / 92.9,
          )
        ],
      ),
    );
  }
}