import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/smallbutton.dart';

class Projectcard extends StatelessWidget {
  const Projectcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 400,
              // width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.TVb7DFHSTEP2N3doqPfEfgHaFj?pid=ImgDet&w=800&h=600&rs=1',
                  fit: BoxFit.cover,
                ),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(30),
              // )
              ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10.0),
            child: Text('Project Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
            
          Container(
              width: 500,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Something to read and know about the project done, this is a description of the project and click to read more about it contact me if you like it i will be glad to work with you, description of the project and click to read more about it contact me if you like it i will be glad to work with you',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              )),
          SmallButton(
            text: 'Learn More >>',
            function: () {},
            showShadow: false,
          )
        ],
      ),
    );
  }
}
