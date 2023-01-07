import 'package:flutter/material.dart';
import 'package:portfolio_web/model/project_model.dart';
import 'package:portfolio_web/screens/mobile/drawer.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/footer.dart';

class MobileProjectDetails extends StatelessWidget {
  Map project;
  MobileProjectDetails({required this.project});
// , extra: {
//                         'name': projectName,
//                         'des': description,
//                         'firstpic': firstImage,
//                         'projectdp':projectImage,
//                         'color': color
//                       }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MobileDrawer(),
      body: ListView(
        children: [
          Container(
            // height: 400,
            color: project['color'],
            child: Column(
              children: [
                SizedBox(
                  height: height / 20,
                ),
                Text(
                  project['name'],
                  style: TextStyle(
                      fontSize: height / 20,
                      fontWeight: FontWeight.bold,
                      color: whiteColor),
                ),
                Padding(
                  padding: EdgeInsets.all(height / 40),
                  child: Text(
                    'Something to read and know about the project done, this is a description of the project and click to read more about it contact me if you like it i will be glad to work with you, description of the project and click to read more about it contact me if you like it i will be glad to work with you',
                    style: TextStyle(color: whiteColor, fontSize: height / 50),
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Padding(
                  padding: EdgeInsets.all(height / 40),
                  child:
                      Image.asset('assets/images/${project['firstpic']}.png'),
                )
              ],
            ),
          ),
          Column(
            children: List.generate(
                3,
                (index) => Image.asset(
                    'assets/images/${project['listpic'] + '${index + 1}'}.png')),
          ),
          Image.asset('assets/images/${project['projectdp']}.png'),
          // Spacer(),
          Align(alignment: Alignment.bottomCenter, child: Footer())
        ],
      ),
    );
  }
}
