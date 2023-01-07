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

import '../widget/appbartext.dart';
import '../widget/footer.dart';

class TestimoniesPage extends StatelessWidget {
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
        automaticallyImplyLeading: width > 700 ? false : true,

        // leading: MobileDrawer(),

        actions: width > 700
            ? [
                AppBarText(
                    id: 2,
                    text: 'Home',
                    function: () {
                      context.go('/');
                    },
                    padding: width/86.28),
                // AppBarText(
                //     id: 2, text: 'Porfolio', function: () {}, padding: 18.0),
                AppBarText(
                    id: 1, text: 'Testimonies', function: () {}, padding: width/86.28),
                AppBarText(
                    id: 2, text: 'Contact', function: () {}, padding: width/86.28),
              ]
            : [],
      ),
      drawer: MobileDrawer(),
      body: ListView(
        children: [
          Container(
            // height: 1000,
            height: height * 1.25,
            width: width,
            decoration: BoxDecoration(
              color: bgColor,
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height / 20,
                ),
                Text(
                  'What Our Client Says About Us!',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: height / 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'We are looking forward to add your testimonies to the list!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: height / 40, color: yellowColor),
                ),
                SizedBox(
                  height: height / 11.43,
                ),
                Container(
                  height: height / 1.6,
                  width: width,
                  // color: blackColor,
                  child: CarouselSlider(
                    carouselController: buttonCarouselController,
                    options:
                        CarouselOptions(viewportFraction: 1, autoPlay: true),
                    items: List.generate(5, (index) => MessagesContainer()),
                    // child: ListView.builder(
                    //   itemCount: 5,
                    //   scrollDirection: Axis.horizontal,
                    //   itemBuilder: (_, index) {
                    //     return MessagesContainer();
                    //   },
                    // ),
                  ),
                ),
                SizedBox(
                  height: height / 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ScrollButton(
                        icon: Icons.arrow_back_ios_outlined,
                        action: () {
                          buttonCarouselController.previousPage();
                          // myController.jumpTo(1);
                        }),
                    SizedBox(
                      width: width/4.44,
                    ),
                    // Spacer(),
                    ScrollButton(
                        icon: Icons.arrow_forward_ios_outlined,
                        action: () {
                          buttonCarouselController.nextPage();
                          // myController.jumpTo(1);
                        })
                  ],
                ),
              ],
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}

class MessagesContainer extends StatelessWidget {
  const MessagesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: height/40, vertical: height/40),
      // height: 300,
      width: width/2.22,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(height/26.7),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(height/100),
                    height: height/7.27,
                    width: height/7.27,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: blackColor, width: 2),
                    ),
                    child: Container(
                      height: height/8,
                      width: height/8,
                      decoration: BoxDecoration(
                          color: bgColor,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/my.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: height/53.33,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        'Emmanuel Matthew',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: height/40),
                      ),
                      Text(
                        'Developer',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: height/53.33,
                            color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: height/16,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(fontSize: height/40),
          )
        ],
      ),
    );
  }
}
