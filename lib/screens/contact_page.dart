import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/screens/mobile/drawer.dart';
import 'package:portfolio_web/widget/appbartext.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/footer.dart';
import 'package:portfolio_web/widget/message_input.dart';
import 'package:portfolio_web/widget/smallbutton.dart';
import 'package:go_router/go_router.dart';

import 'mobile/home.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MobileDrawer(),
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        // leading: MobileDrawer(),

        actions: [
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
        ],
      ),
      body: ListView(
        children: [
          Container(
            // width: 800,
            // margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                    children: [
                      TextSpan(text: 'Get In '),
                      TextSpan(
                          text: 'Touch!',
                          style: TextStyle(color: Color(0xFF3F8E00)))
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Hey There, Got a project, Job Offer or Consulting work for me? Feel free to contact me ASAP',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 7.7),
                  child: Column(
                    children: [
                      MessageInput(
                        width: double.infinity,
                        title: 'Full Name',
                        hintText: 'Enter your fullname here',
                      ),
                      MessageInput(
                        width: double.infinity,
                        title: 'Email',
                        hintText: 'Please provide valid E-mail',
                      ),
                      MessageInput(
                        width: double.infinity,
                        title: 'Subject',
                        hintText: 'Your Email Subject',
                      ),
                      MessageInput(
                        width: double.infinity,
                        title: 'Message',
                        hintText: 'Type your message here',
                        line: 6,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Align(
                    // margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4.2),
                    alignment: MediaQuery.of(context).size.width > 500
                        ? Alignment.bottomRight
                        : Alignment.center,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 7.7),
                      child: LargeButton(
                          text: 'Send Message', function: () {}, width: 300),
                    )),
                SizedBox(height: 30),
              ],
            ),
          ),
         
          Center(
            child: Container(
              width: 400,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contatct Info',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  
                  ContactDetails(
                      icon: Icons.phone,
                      title: 'Phone',
                      info: '08108281494 / 07064610605'),
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
          ),
          SizedBox(
            height: 100,
          ),
          Align(alignment: Alignment.bottomCenter, child: Footer())
        ],
      ),
    );
  }
}
