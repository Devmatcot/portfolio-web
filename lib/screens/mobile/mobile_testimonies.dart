import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/model/testimonies_model.dart';
import 'package:portfolio_web/screens/mobile/drawer.dart';
import 'package:portfolio_web/services/services.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/scrollbutton.dart';

import '../../widget/appbartext.dart';
import '../../widget/footer.dart';

class MobileTestimoniesPage extends StatelessWidget {
  // const TestimoniesPage({super.key});
  CarouselController buttonCarouselController = CarouselController();
  ScrollController _scrollController = ScrollController();

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
      drawer: MobileDrawer(
        scrollController: _scrollController,
      ),
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
                itemCount: callServices.reviews.length,
                // scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return MessagesContainer(
                    // Mheight: width / 1.6,
                    Mwidth: width / 1.25,
                    model: callServices.reviews[index],
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

  Services callServices = Services();
}

class MessagesContainer extends StatelessWidget {
  // double Mheight;
  double Mwidth;
  TestimoniesModel model;
  MessagesContainer(
      {
      // required this.Mheight,
      required this.Mwidth,
      required this.model});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width / 25, vertical: width / 25),
      // height: Mheight,
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
                      decoration: const BoxDecoration(
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
                        model.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: width / 25),
                      ),
                      Text(
                        model.jobRole,
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
            model.review,
            style: TextStyle(fontSize: width / 25),
          )
        ],
      ),
    );
  }
}
