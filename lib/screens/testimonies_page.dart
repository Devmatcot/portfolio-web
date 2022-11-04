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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,

        elevation: 0,
        automaticallyImplyLeading: width > 600 ? false : true,

        // leading: MobileDrawer(),

        actions:width > 600? [
          AppBarText(
              id: 1,
              text: 'Home',
              function: () {
                context.go('/');
              },
              padding: 18.0),
          AppBarText(id: 2, text: 'Porfolio', function: () {}, padding: 18.0),
          AppBarText(
              id: 3, text: 'Testimonies', function: () {}, padding: 18.0),
          AppBarText(id: 4, text: 'Contact', function: () {}, padding: 18.0),
        ]:[],
      ),
      drawer: MobileDrawer(),
      body: ListView(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'What Our Client Says About Us!',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
                 Text(
                'We are looking forward to add your testimonies to the list!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: yellowColor),
              ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 600,
                  width: width,
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
                  height: 50,
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
                      width: 350,
                    ),
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 500,
      width: 900,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: blackColor, width: 2),
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: bgColor,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/my.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Emmanuel Matthew',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text(
                        'Developer',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
