import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/services/services.dart';

class Footer extends StatelessWidget {
  Services callServices = Services();
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70,
      width: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      callServices.openUrl(linkedin);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      callServices.openUrl(whatsappLink);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      callServices.openUrl(twitterLink);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      callServices.openUrl(gitHubLink);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    )),
              ],
            ),
            Text(
              '© 2023 Built by Dev Matcot, Designed By Bulam Gerhana',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Built using', style: TextStyle(color: Colors.white)),
                FlutterLogo(
                  size: 18,
                ),
                Text('with ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400)),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 18,
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
