import 'package:flutter/material.dart';
import 'package:portfolio_web/widget/appbartext.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:portfolio_web/widget/footer.dart';
import 'package:portfolio_web/widget/message_input.dart';
import 'package:portfolio_web/widget/smallbutton.dart';
import 'package:go_router/go_router.dart';

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
          AppBarText(id: 1,text: 'Home', function: () {
            context.go('/');
          }, padding: 18.0),
          AppBarText(id: 2,text: 'Porfolio', function: () {}, padding: 18.0),
          AppBarText(id: 3,text: 'Testimonie', function: () {}, padding: 18.0),
          AppBarText(id: 4,text: 'Contact', function: () {}, padding: 18.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
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
                    SizedBox(height: 20),
                    Text(
                        'Hey There, Got a project, Job Offer or Consulting work for me? Feel free to contact me ASAP',  style: TextStyle(fontSize:20), textAlign: TextAlign.center, ),
                    SizedBox(height: 10),
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
                    SizedBox(height: 30),
                
                    Align(
                      alignment: Alignment.bottomRight,
                      child: LargeButton(text: 'Send Message', function: (){}, width: 300,)),
                    SizedBox(height: 50),
                  
                  ],
                ),
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
