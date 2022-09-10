import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/appbartext.dart';
import 'package:portfolio_web/widget/constant.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          AppBarText(text: 'Home', function: () {}, padding: 18.0),
          AppBarText(text: 'Home', function: () {}, padding: 18.0),
          AppBarText(text: 'Home', function: () {}, padding: 18.0),
          AppBarText(text: 'Home', function: () {}, padding: 18.0),
        ],
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                  children: [
                TextSpan(text: 'Get In '),
                TextSpan(
                    text: 'Touch!', style: TextStyle(color: Color(0xFF3F8E00)))
              ])),
        ],
      )),
    );
  }
}
