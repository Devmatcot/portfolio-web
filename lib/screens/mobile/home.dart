import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/screens/mobile/drawer.dart';

import '../../widget/appbartext.dart';
import '../../widget/card.dart';
import '../../widget/constant.dart';
import '../../widget/description.dart';
import '../../widget/footer.dart';
import '../../widget/message_input.dart';
import '../../widget/myStack.dart';
import '../../widget/project_card.dart';
import '../../widget/scrollbutton.dart';
import '../../widget/smallbutton.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
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
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: EdgeInsets.only(bottom: 30, top: 20),
                // expandedTitleScale: 50,
                // title: Text('Dev Matcot', style: TextStyle(color: whiteColor),),
                collapseMode: CollapseMode.pin),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                // height: MediaQuery.of(context).size.height / 1.00005,
                height: MediaQuery.of(context).size.height/1.076,
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
                      bottom: 0,
                      right: 10,
                      left: 10,
                      top: MediaQuery.of(context).size.height/2.153,
                      child: Container(
                        height: MediaQuery.of(context).size.height/1.38,
                        width: MediaQuery.of(context).size.height/1.938,
                        // color: Colors.black,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/my.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 10,
                      child: Container(
                        width: MediaQuery.of(context).size.height/2.423,
                        // height: MediaQuery.of(context).size.height/1.938,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hy! I Am',
                              style: TextStyle(
                                  fontSize: 48,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Matthew Emmanuel',
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                                color: yellowColor,
                              ),
                            ),
                            const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SmallButton(
                                  text: 'Hire Me',
                                  function: () {},
                                ),
                                SizedBox(width: 50),
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
                    // Positioned(
                    //     left: 50,
                    //     // top: 200,
                    //     bottom: 120,
                    // child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     const Text(
                    //       'My Stack',
                    //       style: TextStyle(
                    //         fontSize: 20,
                    //         color: whiteColor,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 10,
                    //     ),
                    // Row(
                    //   children: [
                    //     MyStack(image: 'assets/images/flutter.png'),
                    //     MyStack(image: 'assets/images/dart.png'),
                    //     MyStack(image: 'assets/images/firebase.png'),
                    //     MyStack(image: 'assets/images/mongdb.png'),
                    //   ],
                    // ),
                    // ],
                    // )),
                    // Positioned(
                    //   bottom: 120,
                    //   left: 550,
                    //   child: Description(
                    //       // animate: _animation,
                    //       text:
                    //           "Providing Solutions To Your Business\nWith User Friendly Mobile App",
                    //       image: 'assets/images/smile.png'),
                    // ),
                    // Positioned(
                    //   bottom: 10,
                    //   right: 50,
                    //   child: Description(
                    //       // animate: _animation,
                    //       text:
                    //           "Providing Solutions To Your Business\nWith User Friendly Mobile App",
                    //       image: 'assets/images/ribbon.png'),
                    // ),
                    // Positioned(
                    //   right: 50,
                    //   top: 100,
                    //   child: Description(
                    //     text: "100% Customer\nSatifactory",
                    //     image: 'assets/images/award.png',
                    //   ),
                    // ),
                    // Positioned(
                    //   left: 50,
                    //   bottom: 20,
                    //   child: RichText(
                    //     text: TextSpan(
                    //         style: TextStyle(
                    //             fontFamily: 'Poppins',
                    //             color: whiteColor.withOpacity(0.7)),
                    //         children: const [
                    //           TextSpan(
                    //               text:
                    //                   'Building an app that is User-centric and\nUser-pleasing is very possible\nWhen '),
                    //           TextSpan(
                    //               text: 'Dev Matcot ',
                    //               style: TextStyle(
                    //                   color: yellowColor,
                    //                   fontWeight: FontWeight.bold)),
                    //           TextSpan(text: 'is Involved.')
                    //         ]),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                height: 800,
                width: double.infinity,
                color: whiteColor,
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: 50,
                      child: MyCard(
                          image: 'assets/images/ribbon.png',
                          title: 'Design',
                          text:
                              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.'),
                    ),
                    Positioned(
                        left: 100,
                        top: 100,
                        child: Row(
                          children: [
                            MyCard(
                                width: 100,
                                image: 'assets/images/smile.png',
                                title: 'UI/UX',
                                text:
                                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily'),
                            SizedBox(
                              width: 80,
                            ),
                            MyCard(
                                width: 100,
                                image: 'assets/images/sunglasses.png',
                                title: 'Developer',
                                text:
                                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily'),
                          ],
                        )),
                    Positioned(
                      right: 150,
                      top: 50,
                      child: Container(
                        width: 500,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'My awasome',
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text('Services',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF8773EE))),
                                const Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                                const SizedBox(
                                  height: 20,
                                ),
                                SmallButton(
                                    text: 'Download CV', function: () {}),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins'),
                                    children: [
                                  TextSpan(text: 'Get In '),
                                  TextSpan(
                                      text: 'Touch!',
                                      style:
                                          TextStyle(color: Color(0xFF3F8E00)))
                                ])),
                            // const Text(
                            //   'Get In Touch',
                            // style: TextStyle(
                            //     fontSize: 30, fontWeight: FontWeight.bold),
                            // ),
                            SizedBox(
                              height: 10,
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
                              height: 20,
                            ),
                            LargeButton(
                              text: 'Submit',
                              function: () {},
                              width: 400,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 100,
                      child: Container(
                        width: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Clients get always',
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.bold)),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold),
                                children: [
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
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('1. Hardworks',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            const Text('2. Clean Code',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            const Text('3. Deligent and Commitment',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    color: Colors.black87)),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: 50,
                        bottom: 0,
                        child: Container(
                          width: 600,
                          height: 700,
                          decoration: BoxDecoration(
                              // color: Colors.black26,

                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/mypic.png',
                                  ),
                                  fit: BoxFit.contain)),
                        )),
                    Positioned(
                      bottom: 500,
                      right: 70,
                      child: Image.asset(
                        'assets/images/ellipse.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Positioned(
                        bottom: 150,
                        right: 500,
                        child: Container(
                          width: 300,
                          child: Text(
                              '"Lorem Ipsum is Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry" --- Dev Matcot',
                              style: TextStyle(fontSize: 20)),
                        ))
                  ],
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Recent Projects',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  child: Text(
                    'Serving customer with different quality product. Solving User and Business Problem With exceptional app Solving User and Business Problem with exceptional app',
                    style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
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

                    // child: CarouselSlider(
                    //     carouselController: buttonCarouselController,
                    //     items: List.generate(10, (index) {
                    //       return Projectcard();
                    //     }),
                    //     options: CarouselOptions(autoPlay: true)),

                    child: ListView.separated(
                        // controller:myController,
                        separatorBuilder: ((context, index) => SizedBox(
                              width: 40,
                            )),
                        itemCount: 10,
                        dragStartBehavior: DragStartBehavior.start,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Projectcard()),
                  ),
                  Positioned(
                    left: 20,
                    top: 200,
                    child: ScrollButton(
                        icon: Icons.arrow_back_ios_outlined,
                        action: () {
                          // buttonCarouselController.previousPage();
                          // myController.jumpTo(1);
                        }),
                  ),
                  Positioned(
                    right: 20,
                    top: 200,
                    child: ScrollButton(
                        icon: Icons.arrow_forward_ios_rounded,
                        action: () {
                          // buttonCarouselController.nextPage();
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
}