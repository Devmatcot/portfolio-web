import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/constant.dart';
import 'package:portfolio_web/services/services.dart';

import 'package:portfolio_web/widget/card.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/download_cv.dart';
import 'package:portfolio_web/widget/myStack.dart';
import 'package:portfolio_web/widget/mobile_project_card.dart';

import '../../model/project_model.dart';
import '../../widget/appbartext.dart';
import '../../widget/description.dart';
import '../../widget/footer.dart';
import '../../widget/message_input.dart';
import '../../widget/scrollbutton.dart';
import '../../widget/smallbutton.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../widget/web_project_card.dart';
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
  Services callServices = Services();
  final dataKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 9.69,
            backgroundColor: bgColor,
            floating: true,
            automaticallyImplyLeading: false,
            // pinned: true,
            // excludeHeaderSemantics: true,

            snap: true,
            actions: [DownloadCV()],
            //  toolbarHeight: 100,
            // centerTitle: true,
            // collapsedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding:
                    EdgeInsets.only(bottom: height / 32.2, top: height / 48.45),
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
                          // AppBarText(
                          //     function: (() {
                          //       context.go('/contact');
                          //     }),
                          //     text: 'About',
                          //     id: 4),
                          AppBarText(
                              function: () {
                                _scrollController.animateTo(4000,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              },
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
                      bottom: 0,
                      // bottom: width < 1700 ? -200 : 0,
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
                              'Full Stack Software Developer\nI Specialize in building high quality mobile and web application.\nI have a strong passion for providing solution to business.',
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
                                  function: () {
                                    context.go('/contact');
                                  },
                                  padding: height / 92.9,
                                ),
                                SizedBox(width: width / 64),
                                SmallButton(
                                  text: 'View Recent Projects',
                                  function: () =>
                                      // context.go('/portfolio');
                                      _scrollController.animateTo(4000,
                                          duration: Duration(seconds: 1),
                                          curve: Curves.easeIn),
                                  padding: height / 92.9,
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
                            Text(
                              'My Stack',
                              style: TextStyle(
                                fontSize: height / 48.45,
                                color: whiteColor,
                              ),
                            ),
                            SizedBox(
                              height: height / 96.9,
                            ),
                            Row(
                              children: [
                                MyStack(
                                    height: width / 48,
                                    image: 'assets/images/flutter.png'),
                                MyStack(
                                    height: width / 48,
                                    image: 'assets/images/dart.png'),
                                MyStack(
                                    height: width / 48,
                                    image: 'assets/images/firebase.png'),
                                MyStack(
                                    height: width / 48,
                                    image: 'assets/images/mongdb.png'),
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
                      bottom: height / 96.9,
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
                        text: const TextSpan(
                            style: TextStyle(
                                fontFamily: 'Poppins', color: whiteColor),
                            children: [
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
                height: height / 13.84,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Services Offering',
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
              Container(
                // height: height / 0.946,
                // height: 1000,
                width: double.infinity,
                color: whiteColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCard(
                            // height: 500,
                            width: width / 2.84,
                            image: 'assets/images/newapp.png',
                            title: 'Design and Develop\nCustom Mobile Apps',
                            text:
                                'I Design and Develop custom Mobile Apps services that allow businesses and individuals to meet their specific needs and goals. Whether you need a simple app to showcase your products or a complex, data-driven app to streamline your business processes, I have the skills and expertise to bring your vision to reality. Contact Me today to learn more about how our Design and Develop Custom Mobile Apps services can help you succeed.'),
                        MyCard(
                            width: width / 2.84,
                            // height: 500,
                            image: 'assets/images/database.png',
                            title:
                                'Integrating Mobile Apps with Backend services and APIs',
                            text:
                                'Integrating mobile applications with backend services and APIs involves connecting the front-end mobile app with the back-end server or database to facilitate exchange of data. it allows developling of dynamic and data-driven apps, as the app can retrieve and display information from the server in real-time.'),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),

                    // SizedBox(
                    //   width: width / 24,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCard(
                            // height: 500,

                            width: width / 2.84,
                            image: 'assets/images/appfeature.png',
                            title: 'Implementing features',
                            text:
                                'I also offer services of adding feature and functionalities to your mobile app to enhance its capabilities and improve the user experience. Some common features that can be implemented in a mobile app include: Push notifications, Location tracking, In-app purchases, Social media integration, Personalization etc.'),
                        MyCard(
                            // height: 500,

                            width: width / 2.84,
                            image: 'assets/images/testing.png',
                            title: 'Testing and Debugging Mobile Apps',
                            text:
                                'This is an important step in the development process as it ensures that the app is stable, performs as expected, and provides a good user experience. this process involves identifying and fixing defects or issues in the mobile app. It is important to thoroughly test and debug a mobile app before releasing it to the public to ensure that it is of high quality and performs as expected.'),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCard(
                            // height: 500,

                            width: width / 2.84,
                            image: 'assets/images/appdoctor.png',
                            title:
                                'Consulting services on mobile apps development and strategy',
                            text:
                                'I offer expert advice and guidance to clients on how to develop and implement a successful mobile app. This can include helping to define the scope and requirements of the project, suggesting technologies and frameworks to use, and providing ongoing support and guidance throughout the development process. In addition to development-related services, i also offer advice on marketing and promoting the app to reach the target audience, as well as how to monetize the app and generate revenue.'),
                        MyCard(
                            // height: 500,

                            width: width / 2.84,
                            image: 'assets/images/maintainace.png',
                            title:
                                'Maintaining and Updating Existing Mobile Apps',
                            text:
                                'This is an important step in the development process as it ensures that the app is stable, performs as expected, and provides a good user experience. this process involves identifying and fixing defects or issues in the mobile app. It is important to thoroughly test and debug a mobile app before releasing it to the public to ensure that it is of high quality and performs as expected.'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Container(
                height: height / 0.946,
                width: double.infinity,
                color: whiteColor,
                child: Stack(
                  children: [
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
                                  'Get My awasome',
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
                                    'roficient in Dart and skilled in creaƟng intuiƟve and visually appealing user interfaces using FluƩer. Proven ability to deliver high-quality, cross-plaƞorm mobile apps on Ɵme and within budget.'),
                                SizedBox(
                                  height: height / 48.45,
                                ),
                                SmallButton(
                                  text: 'Download CV',
                                  function: () {
                                    callServices.openUrl(resumeLink);
                                  },
                                  padding: height / 92.9,
                                ),
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
                                controller: emailControler,
                                title: 'E-mail',
                                hintText: 'Please provide your Email'),
                            MessageInput(
                                controller: subjectControler,
                                title: 'Subject',
                                hintText: 'Enter Message Subject here'),
                            MessageInput(
                              controller: messageControler,
                              title: 'Message',
                              hintText: 'Enter Message here',
                              line: 5,
                            ),
                            SizedBox(
                              height: height / 48.45,
                            ),
                            LargeButton(
                              text: 'Submit',
                              function: () {
                                 callServices.sendMail(
                                  mail: emailControler.text,
                                  context: context,
                                  clientName: clientNameControler.text,
                                  subject: subjectControler.text,
                                  message: messageControler.text);
                              },
                              width: width / 4.8,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // bottom: width / 78.4,
                      top: height / 19.38,
                      left: width / 19.2,
                      child: Container(
                        width: width / 3.84,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Clients always get',
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
                                'With the proliferation of smartphone technology, it is more important than ever for brands to engage with their customers through effective and memorable mobile applications. I believe these apps should be intuitive experiences that solve real problems while engaging and delighting end users. I take pride in building solutions that drive adoption while fostering customer loyalty.'),
                            SizedBox(
                              height: height / 96.9,
                            ),
                            Text('1. Hardworks',
                                style: TextStyle(
                                    fontSize: height / 48.45,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            Text(
                              '2. Attention to Details',
                              style: TextStyle(
                                  fontSize: height / 48.45,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87),
                            ),
                            Text(
                              '3. Clean Code',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height / 48.45,
                                  color: Colors.black87),
                            ),
                            Text(
                              '4. Deligent and Commitment',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height / 48.45,
                                  color: Colors.black87),
                            ),
                            Text(
                              '5. Teamwork Spirit',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height / 48.45,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: height / 48.45,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: width / 38.4,
                      bottom: 0,
                      left: width / 38.4,
                      child: Container(
                        width: width / 3.2,
                        height: height / 1.384,
                        decoration: const BoxDecoration(
                            // color: Colors.black26,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/mypic.png',
                                ),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    Positioned(
                      bottom: height / 1.938,
                      left: width / 27.428,
                      child: Image.asset(
                        'assets/images/ellipse.png',
                        height: height / 32.3,
                        width: height / 32.3,
                      ),
                    ),
                    Positioned(
                        top: height / 1.46,
                        left: width / 19.2,
                        child: Container(
                          // width: width / 6.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contatct Info',
                                style: TextStyle(
                                    fontSize: height / 38.76,
                                    fontWeight: FontWeight.bold),
                              ),
                              ContactDetails(
                                  icon: Icons.phone,
                                  title: 'Phone',
                                  info: '+2348108281494 / +2347064610605'),
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
                key: dataKey,
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
                height: height / 48.45,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width / 9.6),
                  color: Colors.transparent,
                  child: Text(
                    'I build to solve User and Business Problem\nWith Exceptional Mobile App',
                    style: TextStyle(
                        fontSize: height / 48.45,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: height / 1.38,
                    width: double.infinity,
                    // color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                        vertical: height / 32.3, horizontal: height / 32.3),

                    child: CarouselSlider(
                      carouselController: buttonCarouselController,
                      items: List.generate(projectList.length, (index) {
                        return WebProjectcard(
                          // heigth: height / 2.422,
                          imageWidth: width / 2.13,
                          Imageheigth: height / 1.38,
                          frontColor: true,
                          // decription: width / 3.84,
                          projectName: projectList[index].projectName,
                          description: projectList[index].projectName,
                          firstImage: projectList[index].firstImage,
                          projectImage: projectList[index].detailImage,
                          color: projectList[index].color,
                          decriptionWidth: width / 3.84,
                        );
                      }),
                      options: CarouselOptions(
                          // autoPlay: true,
                          viewportFraction: 1),
                    ),
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

  TextEditingController emailControler = TextEditingController();
  TextEditingController subjectControler = TextEditingController();
  TextEditingController clientNameControler = TextEditingController();
  TextEditingController messageControler = TextEditingController();
  CarouselController buttonCarouselController = CarouselController();
  //
  ScrollController myController = ScrollController();
  List<ProjectModel> projectList = [
    ProjectModel(
        color: Color.fromARGB(255, 14, 101, 173),
        detailImage: 'matcotdp',
        firstImage: 'matcotfirst',
        projectDetails: 'matcotfirst',
        listImage: 'matcot',
        projectName: 'Matcot Play'),
    ProjectModel(
        color: Color.fromARGB(255, 14, 62, 219),
        detailImage: 'vastydp',
        firstImage: 'vastyfirst',
        projectDetails: 'vastyfirst',
        listImage: 'vasty',
        projectName: 'Vasty'),
    ProjectModel(
        color: Color.fromARGB(255, 8, 75, 131),
        detailImage: 'payamdp',
        firstImage: 'payamfirst',
        listImage: 'payam',
        projectDetails: 'payamfirst',
        projectName: 'PayAm'),
    // ProjectModcolor: Colors.blue,el(detailImage: '', firstImage: '', projectDetails: '', projectName: 'Airi Wallet'),
    ProjectModel(
        color: Color.fromARGB(255, 44, 2, 68),
        detailImage: 'nftdp',
        firstImage: 'nftfirst',
        projectDetails: '',
        listImage: 'nft',
        projectName: 'NFT Marketplace UI'),
    ProjectModel(
        color: Color.fromARGB(255, 7, 0, 10),
        detailImage: 'autohubdp',
        firstImage: 'autohubfirst',
        projectDetails: 'autohubfirst',
        listImage: 'autohub',
        projectName: 'AutoHub'),
  ];
}
