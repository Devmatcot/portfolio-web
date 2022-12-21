import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/navigator_key.dart';
import 'package:portfolio_web/screens/mobile/drawer.dart';

import '../../widget/appbartext.dart';
import '../../widget/card.dart';
import '../../widget/constant.dart';
import '../../widget/description.dart';
import '../../widget/footer.dart';
import '../../widget/message_input.dart';
import '../../widget/myStack.dart';
import '../../widget/mobile_project_card.dart';
import '../../widget/scrollbutton.dart';
import '../../widget/smallbutton.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  CarouselController buttonCarouselController = CarouselController();
  NavigatorKey myNavKey = NavigatorKey();
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MobileDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 50,
            backgroundColor: bgColor,
            floating: true,
            // pinned: true,
            // excludeHeaderSemantics: true,

            snap: true,
            actions: [
              // Text('Dev Matcot'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/logo.png'),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 30, right: 30),
              //   child: Text(
              //     'Download My CV ${MediaQuery.of(context).size.width}',
              //     style: TextStyle(color: yellowColor),
              //   ),
              // )
            ],
            //  toolbarHeight: 100,
            // centerTitle: true,
            // collapsedHeight: 200,
            flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: EdgeInsets.only(bottom: 30, top: 20),
                // expandedTitleScale: 50,
                // title: Text('Dev Matcot', style: TextStyle(color: whiteColor),),
                collapseMode: CollapseMode.pin),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  // height: MediaQuery.of(context).size.height / 1.00005,
                  height: MediaQuery.of(context).size.height / 1.076,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg.png'),
                        fit: BoxFit.cover),
                    color: bgColor,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -MediaQuery.of(context).size.height / 42.55,
                        right: MediaQuery.of(context).size.width / 39.3,
                        left: MediaQuery.of(context).size.width / 39.3,
                        // top: MediaQuery.of(context).size.height/2.1053,
                        child: Container(
                          // height: MediaQuery.of(context).size.height/1.38,
                          // width: MediaQuery.of(context).size.height/1.938,
                          height: MediaQuery.of(context).size.height / 2.127,
                          width: MediaQuery.of(context).size.height / 2.127,
                          decoration: const BoxDecoration(
                            // color: Colors.black,
                            image: DecorationImage(
                                image: AssetImage('assets/images/my.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width / 18.6,
                        top: MediaQuery.of(context).size.width / 39.3,
                        child: Container(
                          width: MediaQuery.of(context).size.height / 2.423,
                          // height: MediaQuery.of(context).size.height/1.938,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // height: 300,
                                width:
                                    MediaQuery.of(context).size.width / 1.028,

                                // color: Colors.black,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hy! I Am',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              30.27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Matthew Emmanuel',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                30.27,
                                        fontWeight: FontWeight.bold,
                                        // letterSpacing: ,
                                        color: yellowColor,
                                      ),
                                    ),
                                    Text(
                                      'Full Stack Software Developer\nI Specialize in building high quality mobile and web application.\nI have a strong passion for providing solution to business.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              56.73),
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width / 39.3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 3.36,
                        left: MediaQuery.of(context).size.width / 18.6,

                        // right: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SmallButton(
                                  text: 'Hire Me',
                                  function: () {},
                                  padding: height / 66.7,
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width /
                                        3.275),
                                SmallButton(
                                  text: 'Download CV',
                                  function: () {
                                    context.go('/contact');
                                  },
                                  padding: height / 66.7,
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 39.3,
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: whiteColor,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              56.73),
                                  children: const [
                                    TextSpan(
                                        text:
                                            'Building an app that is User-centric and\nUser-pleasing is very possible\nWhen '),
                                    TextSpan(
                                        text: 'Dev Matcot ',
                                        style: TextStyle(
                                            color: yellowColor,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: 'is Involved.')
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height / 8.51,
                        left: MediaQuery.of(context).size.width / 39.3,
                        child: MyStack(
                          height: width / 13,
                          image: 'assets/images/mongdb.png',
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height / 8.51,
                        right: MediaQuery.of(context).size.width / 39.3,
                        child: MyStack(
                            height: width / 13,
                            image: 'assets/images/firebase.png'),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height / 3.40,
                        left: MediaQuery.of(context).size.width / 39.3,
                        child: MyStack(
                            height: width / 13,
                            image: 'assets/images/flutter.png'),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height / 3.40,
                        right: MediaQuery.of(context).size.width / 39.3,
                        child: MyStack(
                            height: width / 13,
                            image: 'assets/images/dart.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  // height: 600,
                  width: double.infinity,
                  color: whiteColor,
                  child: Stack(
                    children: [
                      Positioned(
                        // right: 150,
                        // top: 50,
                        child: Container(
                          // width: 500,
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 12.8),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Clients get always',
                                      style: TextStyle(
                                          fontSize: height / 22.23,
                                          fontWeight: FontWeight.bold)),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: height / 22.23,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text: 'exceptional ',
                                            style:
                                                TextStyle(color: yellowColor)),
                                        TextSpan(
                                            text: 'works ',
                                            style: TextStyle(
                                                color: Color(0xFF8773EE))),
                                        TextSpan(
                                          text: 'from me.',
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut la Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut la'),
                                  SizedBox(
                                    height: height / 66.7,
                                  ),
                                  Text('1. Hardworks',
                                      style: TextStyle(
                                          fontSize: height / 39.23,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87)),
                                  Text('2. Clean Code',
                                      style: TextStyle(
                                          fontSize: height / 39.23,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87)),
                                  Text(
                                    '3. Deligent and Commitment',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: height / 39.23,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: height / 33.35,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height / 13.34,
                  width: double.infinity,
                  color: bgColor,
                  child: Center(
                    child: Text(
                      'Get In Touch',
                      style: TextStyle(
                          color: whiteColor, fontSize: height / 22.23),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 66.70,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 12.8),
                  child: Column(
                    children: [
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: height / 33.35,
                                fontWeight: FontWeight.bold,
                                
                                fontFamily: 'Poppins'),
                            children: [
                              TextSpan(
                                
                                  text:
                                      'Looking to Build Your Next App or\nConsulting work for me? '),
                                    

                              TextSpan(
                                  text: 'Get In Touch With Me ASAP',
                                  style: TextStyle(color: Color(0xFF3F8E00)))
                            ],
                          ),
                        ),
                      ),
                      // const Text(
                      //   'Get In Touch',
                      //   style:
                      //       TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      // ),
                      SizedBox(
                        height: height / 66.70,
                      ),
                      MessageInput(
                          title: 'E-mail',
                          hintText: 'Please provide your Email'),
                      MessageInput(
                          title: 'Mobile',
                          hintText: 'Please provide your phone no'),
                      MessageInput(
                        title: 'Message',
                        hintText: 'Enter Message here',
                        line: 5,
                      ),
                      SizedBox(
                        height: height / 33.35,
                      ),
                      LargeButton(
                        text: 'Submit',
                        function: () {},
                        width: MediaQuery.of(context).size.width / 0.9825,
                      ),
                      SizedBox(
                        height: height / 33.35,
                      ),
                      Text(
                        'Contatct Info',
                        style: TextStyle(
                            fontSize: height / 26.8,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        // height: 180,
                        width: width,
                        // color: Colors.black45,
                        child: FittedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ContactDetails(
                                  icon: Icons.phone,
                                  title: 'Phone',
                                  info: '+2348108281494 or +2347064610605'),
                              ContactDetails(
                                  icon: Icons.email,
                                  title: 'E-mail',
                                  info: 'emmanuelmatthew382@gmail.com'),
                              ContactDetails(
                                  icon: FontAwesomeIcons.twitter,
                                  title: 'Twitter',
                                  info: 'twitter.com/devmatcot'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 33.35,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12.157,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Recent Projects',
                      style: TextStyle(
                          fontSize: height / 22.23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      whiteColor,
                      yellowColor.withOpacity(0.7),
                    ]),
                  ),
                ),
                SizedBox(
                  height: height / 33.35,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: height / 66.70),
                    // color: Colors.white,
                    child: Text(
                      'Solving User and Business Problem With exceptional app Solving User and Business Problem with exceptional app',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: height / 40.35,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      // height: height / 1.482,
                      width: double.infinity,
                      // color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                          vertical: height / 22.23, horizontal: height / 22.23),

                      child: CarouselSlider(
                          carouselController: buttonCarouselController,
                          items: List.generate(10, (index) {
                            return Projectcard(
                              heigth: height / 3.03,
                              decription: width / 1.25,
                            );
                          }),
                          options: CarouselOptions(
                              autoPlay: true,
                              height: height / 1.667,
                              viewportFraction: 1)),
                    ),
                    Positioned(
                      left: width / 18.75,
                      top: height / 4.45,
                      child: ScrollButton(
                          icon: Icons.arrow_back_ios_outlined,
                          action: () {
                            setState(() {
                              buttonCarouselController.previousPage();
                            });
                          }),
                    ),
                    Positioned(
                      right: width / 18.75,
                      top: height / 4.45,
                      child: ScrollButton(
                          icon: Icons.arrow_forward_ios_rounded,
                          action: () {
                            setState(() {
                              buttonCarouselController.nextPage();
                            });
                          }),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 66.7,
                ),
                Footer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  String title;
  String info;
  IconData icon;
  ContactDetails({required this.title, required this.info, required this.icon});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      // width: 300,
      // color: Colors.black,
      child: Row(
        children: [
          FaIcon(icon),
          SizedBox(
            width: height / 66.7,
          ),
          // Text(title, style: TextStyle(fontSize: 18)),
          SizedBox(
            width: height / 66.7,
          ),
          SelectableText(info,
              style: TextStyle(fontSize: height / 33.35, color: Colors.green)),
        ],
      ),
    );
  }
}
