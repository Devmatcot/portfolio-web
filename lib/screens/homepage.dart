import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:portfolio_web/widget/card.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/myStack.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'package:go_router/go_router.dart';

import '../widget/appbartext.dart';
import '../widget/description.dart';
import '../widget/footer.dart';
import '../widget/message_input.dart';
import '../widget/smallbutton.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: kIsWeb,

        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
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
              centerTitle: true,
              // collapsedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: EdgeInsets.only(bottom: 30),
                  // expandedTitleScale: 50,
                  title: Container(
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppBarText(function: (() {}), text: 'Home'),
                        AppBarText(function: (() {}), text: 'Portfolio'),
                        AppBarText(function: (() {}), text: 'Testimonies'),
                        AppBarText(function: (() {
                          context.go('/contact');
                        }), text: 'Contact'),
                        // SmallButton(text: 'My CV', function: (){}),
                      ],
                    ),
                  ),
                  collapseMode: CollapseMode.pin),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 700,
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
                        right: 150,
                        top: 100,
                        child: Container(
                          height: 1000,
                          width: 800,
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
                        top: 100,
                        child: Container(
                          width: 600,
                          height: 700,
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
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                  color: yellowColor,
                                ),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                // overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  SmallButton(
                                    text: 'Hire Me',
                                    function: () {},
                                  ),
                                  SizedBox(width: 30),
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
                          bottom: 120,
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
                                height: 10,
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
                        bottom: 120,
                        left: 550,
                        child: Description(
                            animate: _animation,
                            text:
                                "Providing Solutions To Your Business\nWith User Friendly Mobile App",
                            image: 'assets/images/smile.png'),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 50,
                        child: Description(
                            animate: _animation,
                            text:
                                "Providing Solutions To Your Business\nWith User Friendly Mobile App",
                            image: 'assets/images/ribbon.png'),
                      ),
                      Positioned(
                        right: 50,
                        top: 100,
                        child: Description(
                          text: "100% Customer\nSatifactory",
                          image: 'assets/images/award.png',
                        ),
                      ),
                      Positioned(
                        left: 50,
                        bottom: 20,
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
                  height: 1500,
                  width: double.infinity,
                  color: whiteColor,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        left: 100,
                        child: MyCard(
                            image: 'assets/images/ribbon.png',
                            title: 'Design',
                            text:
                                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.'),
                      ),
                      Positioned(
                          left: 100,
                          top: 500,
                          child: Row(
                            children: [
                              MyCard(
                                  width: 300,
                                  image: 'assets/images/smile.png',
                                  title: 'UI/UX',
                                  text:
                                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publicationIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily'),
                              SizedBox(
                                width: 80,
                              ),
                              MyCard(
                                  width: 300,
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
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold)),
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
                                        style: TextStyle(
                                            color: Color(0xFF8773EE))),
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
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      whiteColor,
                      yellowColor.withOpacity(0.7),
                    ]),
                  ),
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: ListView.separated(
                      separatorBuilder: ((context, index) => SizedBox(
                            width: 40,
                          )),
                      itemCount: 10,
                      dragStartBehavior: DragStartBehavior.start,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => MyCard(
                            // width:300,
                            image: 'assets/images/smile.png',
                            text:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum',
                            title: 'Project',
                          )),
                ),
                SizedBox(
                  height: 10,
                ),
                Footer()
              ]),
            ),
          ],
        ),
      ),
    );
  }
}


