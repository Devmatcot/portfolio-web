import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/constant.dart';

import 'package:portfolio_web/widget/card.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/myStack.dart';
import 'package:portfolio_web/widget/project_card.dart';

import '../../widget/appbartext.dart';
import '../../widget/description.dart';
import '../../widget/footer.dart';
import '../../widget/message_input.dart';
import '../../widget/scrollbutton.dart';
import '../../widget/smallbutton.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../mobile/home.dart';

class WebHome extends StatefulWidget {
  WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 9.69,
            backgroundColor: bgColor,
            floating: true,
            // pinned: true,
            // excludeHeaderSemantics: true,

            snap: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 30),
                child: Text(
                  'Download My CV ${MediaQuery.of(context).size.width}',
                  style: TextStyle(color: yellowColor),
                ),
              )
            ],
            //  toolbarHeight: 100,
            // centerTitle: true,
            // collapsedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: EdgeInsets.only(bottom: 30, top: 20),
                // expandedTitleScale: 50,
                title: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    SizedBox(
                      width: width / 5.48,
                    ),
                    Container(
                      width: width / 3.84,
                      height: height / 4.84,
                      // color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppBarText(function: (() {}), id: 1, text: 'Home'),
                          AppBarText(
                              function: (() {
                                context.go('/contact');
                              }),
                              id: 2,
                              text: 'Portfolio'),
                          AppBarText(
                              function: (() {
                                context.go('/testimonies');
                              }),
                              id: 3,
                              text: 'Testimonies'),
                          AppBarText(
                              function: (() {
                                context.go('/contact');
                              }),
                              text: 'Contact',
                              id: 4),
                          // SmallButton(text: 'My CV', function: (){}),
                        ],
                      ),
                    ),
                  ],
                ),
                collapseMode: CollapseMode.pin),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: MediaQuery.of(context).size.height / 1.11,
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
                      // bottom: 0,
                      bottom: width<1700? -200:0,
                      right: MediaQuery.of(context).size.width / 12.8,
                      top: height / 9.69,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 0.96,
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: const BoxDecoration(
                        // color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage('assets/images/my.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 38.4,
                      top: height / 9.69,
                      child: Container(
                        width: width / 3.2,
                        height: height / 1.38,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hy! I Am',
                              style: TextStyle(
                                  fontSize: width / 48,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Matthew Emmanuel',
                              style: TextStyle(
                                fontSize: width / 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                                color: yellowColor,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height / 48.45),
                              // overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: height / 24.22,
                            ),
                            Row(
                              children: [
                                SmallButton(
                                  text: 'Hire Me',
                                  function: () {},
                                ),
                                SizedBox(width: width / 64),
                                SmallButton(
                                  text: 'Contact Me',
                                  function: () {
                                    context.go('/contact');
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 50,
                        // top: 200,
                        bottom: height / 8.075,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'My Stack',
                              style: TextStyle(
                                fontSize: 20,
                                color: whiteColor,
                              ),
                            ),
                            SizedBox(
                              height: height / 96.9,
                            ),
                            Row(
                              children: [
                                MyStack(image: 'assets/images/flutter.png'),
                                MyStack(image: 'assets/images/dart.png'),
                                MyStack(image: 'assets/images/firebase.png'),
                                MyStack(image: 'assets/images/mongdb.png'),
                              ],
                            ),
                          ],
                        )),
                    Positioned(
                      bottom: height / 8.075,
                      left: width / 3.49,
                      child: Description(
                          animate: _animation,
                          text:
                              "Providing Solutions To Your Business\nWith User Friendly Mobile App",
                          image: 'assets/images/smile.png'),
                    ),
                    Positioned(
                      bottom: 10,
                      right: width / 38.4,
                      child: Description(
                          animate: _animation,
                          text:
                              "Providing Solutions To Your Business\nWith User Friendly Mobile App",
                          image: 'assets/images/ribbon.png'),
                    ),
                    Positioned(
                      right: width / 38.4,
                      top: height / 9.69,
                      child: Description(
                        text: "100% Customer\nSatifactory",
                        image: 'assets/images/award.png',
                      ),
                    ),
                    Positioned(
                      left: width / 38.4,
                      bottom: height / 48.45, //20
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: whiteColor.withOpacity(0.7)),
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
                    )
                  ],
                ),
              ),
              Container(
                height: height / 0.646,
                width: double.infinity,
                color: whiteColor,
                child: Stack(
                  children: [
                    Positioned(
                      top: height / 19.38,
                      left: width / 19.2,
                      child: MyCard(
                          image: 'assets/images/ribbon.png',
                          title: 'Design',
                          text:
                              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.'),
                    ),
                    Positioned(
                        left: width / 19.2,
                        top: height / 1.938,
                        child: Row(
                          children: [
                            MyCard(
                                width: width / 6.4,
                                image: 'assets/images/smile.png',
                                title: 'UI/UX',
                                text:
                                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily'),
                            SizedBox(
                              width: width / 24,
                            ),
                            MyCard(
                                width: width / 6.4,
                                image: 'assets/images/sunglasses.png',
                                title: 'Developer',
                                text:
                                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily'),
                          ],
                        )),
                    Positioned(
                      right: width / 12.8,
                      top: height / 19.38,
                      child: Container(
                        width: width / 3.84,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My awasome',
                                  style: TextStyle(
                                      fontSize: width / 38.4,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Services',
                                    style: TextStyle(
                                        fontSize: width / 38.4,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF8773EE))),
                                const Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                                SizedBox(
                                  height: height / 48.45,
                                ),
                                SmallButton(
                                    text: 'Download CV', function: () {}),
                              ],
                            ),
                            SizedBox(
                              height: height / 48.45,
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontSize: height / 32.3,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                                children: const [
                                  TextSpan(text: 'Get In '),
                                  TextSpan(
                                      text: 'Touch!',
                                      style:
                                          TextStyle(color: Color(0xFF3F8E00)))
                                ],
                              ),
                            ),
                            // const Text(
                            //   'Get In Touch',
                            // style: TextStyle(
                            //     fontSize: 30, fontWeight: FontWeight.bold),
                            // ),
                            SizedBox(
                              height: height / 96.9,
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
                              height: height / 48.45,
                            ),
                            LargeButton(
                              text: 'Submit',
                              function: () {},
                              width: width / 4.8,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: width / 78.4,
                      left: width / 19.2,
                      child: Container(
                        width: width / 3.84,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Clients get always',
                                style: TextStyle(
                                    fontSize: height / 21.53,
                                    fontWeight: FontWeight.bold)),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: height / 21.53,
                                    fontWeight: FontWeight.bold),
                                children: const [
                                  TextSpan(
                                      text: 'exceptional ',
                                      style: TextStyle(color: yellowColor)),
                                  TextSpan(
                                      text: 'works ',
                                      style:
                                          TextStyle(color: Color(0xFF8773EE))),
                                  TextSpan(
                                    text: 'from me.',
                                  )
                                ],
                              ),
                            ),
                            const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut la Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut la'),
                            SizedBox(
                              height: height / 96.9,
                            ),
                            Text('1. Hardworks',
                                style: TextStyle(
                                    fontSize: height / 48.45,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            Text(
                              '2. Clean Code',
                              style: TextStyle(
                                  fontSize: height / 48.45,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87),
                            ),
                            Text(
                              '3. Deligent and Commitment',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height / 48.45,
                                  color: Colors.black87),
                            ),
                             SizedBox(
                              height: height/48.45,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: width / 38.4,
                        bottom: 0,
                        child: Container(
                          width: width / 3.2,
                          height: height / 1.384,
                          decoration: BoxDecoration(
                              // color: Colors.black26,

                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/mypic.png',
                                  ),
                                  fit: BoxFit.contain)),
                        )),
                    Positioned(
                      bottom: height / 1.938,
                      right: width / 27.428,
                      child: Image.asset(
                        'assets/images/ellipse.png',
                        height: height / 32.3,
                        width: height / 32.3,
                      ),
                    ),
                    Positioned(
                        bottom: height / 6.46,
                        right: width / 3.84,
                        child: Container(
                          width: width / 6.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contatct Info',
                                style: TextStyle(
                                    fontSize: height/38.76, fontWeight: FontWeight.bold),
                              ),
                              ContactDetails(
                                  icon: Icons.phone,
                                  title: 'Phone',
                                  info: '08108281494 / 07064610605'),
                              ContactDetails(
                                  icon: Icons.email,
                                  title: 'E-mail',
                                  info: 'emmanuel\nmatthew382@gmail.com'),
                              ContactDetails(
                                  icon: FontAwesomeIcons.twitter,
                                  title: 'Twitter',
                                  info: 'twitter.com/devmatcot'),
                            ],
                          ),
                          // child: Text(
                          //     '"Lorem Ipsum is Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry" --- Dev Matcot',
                          //     style: TextStyle(fontSize: 20)),
                        ))
                  ],
                ),
              ),
              Container(
                height: height / 13.84,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Recent Projects',
                    style: TextStyle(
                        fontSize: height / 32.3, fontWeight: FontWeight.bold),
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
                height: 20,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width/9.6),
                  color: Colors.white,
                  child: Text(
                    'Serving customer with different quality product. Solving User and Business Problem\nwith exceptional app Solving User and Business Problem with exceptional app',
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins-Light'),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 650,
                    width: double.infinity,
                    // color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),

                    // child: CarouselSlider.builder(
                    //     itemCount: 10,
                    //     carouselController: buttonCarouselController,
                    //     itemBuilder: (_, ind, indx) {
                    //       return Projectcard();
                    //     },
                    //     options: CarouselOptions()),

                    child: CarouselSlider(
                        carouselController: buttonCarouselController,
                        items: List.generate(10, (index) {
                          return Projectcard(heigth: height/2.422,decription: width/3.84, );
                        }),
                        options: CarouselOptions(autoPlay: true, )),

                    // child: ListView.separated(
                    //   controller:myController,
                    //     separatorBuilder: ((context, index) => SizedBox(
                    //           width: 40,
                    //         )),
                    //     itemCount: 10,
                    //     dragStartBehavior: DragStartBehavior.start,
                    //     physics: BouncingScrollPhysics(),
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (context, index) =>
                    //         Projectcard()),
                  ),
                  Positioned(
                    left: width / 96,
                    top: height / 4.84,
                    child: ScrollButton(
                        icon: Icons.arrow_back_ios_outlined,
                        action: () {
                          buttonCarouselController.previousPage();
                          // myController.jumpTo(1);
                        }),
                  ),
                  Positioned(
                    right: width / 96,
                    top: height / 4.84,
                    child: ScrollButton(
                        icon: Icons.arrow_forward_ios_rounded,
                        action: () {
                          buttonCarouselController.nextPage();
                        }),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Footer()
            ]),
          ),
        ],
      ),
    );
  }

  CarouselController buttonCarouselController = CarouselController();
  ScrollController myController = ScrollController();
}
