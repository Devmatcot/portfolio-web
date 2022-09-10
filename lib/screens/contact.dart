import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/appbartext.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/message_input.dart';
import 'package:portfolio_web/widget/smallbutton.dart';

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
        child: Container(
          width: 800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
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
              SizedBox(height: 30),
              Text(
                  'Hey There, Got a project, Job Offer or Consulting work for me? Feel free to contact me ASAP',  style: TextStyle(fontSize:20), textAlign: TextAlign.center, ),
              SizedBox(height: 10),
              MessageInput(
                width: 800,
                title: 'email',
                hintText: 'email',
              ),
              MessageInput(
                width: 800,
                title: 'email',
                hintText: 'email',
              ),
              MessageInput(
                width: 800,
                title: 'email',
                hintText: 'email',
                line: 6,
              ),
              SizedBox(height: 30),

              Align(
                alignment: Alignment.bottomRight,
                child: LargeButton(text: 'Send Message', function: (){}, width: 300,))
            ],
          ),
        ),
      ),
    );
  }
}
