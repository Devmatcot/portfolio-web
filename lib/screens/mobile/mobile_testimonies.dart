import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/screens/mobile/drawer.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/scrollbutton.dart';

import '../../widget/appbartext.dart';
import '../../widget/footer.dart';

class MobileTestimoniesPage extends StatelessWidget {
  // const TestimoniesPage({super.key});
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print(width);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        automaticallyImplyLeading: width > 600 ? false : true,
      ),
      drawer: MobileDrawer(),
      body: Container(
        height: height,
        width: width,
        // padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: width / 12.5,
            ),
            Padding(
              padding: EdgeInsets.all(width / 62.5),
              child: Text(
                'What Our Client Says About Us!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: whiteColor,
                    fontSize: width / 14.28,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: width / 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 25),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                // scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return MessagesContainer(
                    Mheight: width / 1.6,
                    Mwidth: width / 1.25,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: width / 25,
                ),
              ),
            ),
            SizedBox(
              height: width / 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 25),
              child: Text(
                'We are looking forward to add your testimonies to the list!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: width / 25, color: yellowColor),
              ),
            ),
            SizedBox(
              height: width / 10,
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}

class MessagesContainer extends StatelessWidget {
  double Mheight;
  double Mwidth;
  MessagesContainer({required this.Mheight, required this.Mwidth});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width / 25, vertical: width / 25),
      height: Mheight,
      width: Mwidth,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(width / 16.67),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(width / 62.5),
                    height: width / 5.55,
                    width: width / 5.55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: blackColor, width: 2),
                    ),
                    child: Container(
                      height: width / 6.25,
                      width: width / 6.25,
                      decoration: BoxDecoration(
                          color: bgColor,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/my.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: width / 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emmanuel Matthew',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: width / 25),
                      ),
                      Text(
                        'Developer',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width / 33.33,
                            color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: width / 50,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consecteturLorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetu adipiscing elit, sed do',
            style: TextStyle(fontSize: width / 25),
          )
        ],
      ),
    );
  }
}
