import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Services {
  Future<void> openUrl(_url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  sendMail(
      {String? subject,
      String? message,
      required String clientName,
      required BuildContext context,
      required String mail}) {
    final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'matcotconcept@gmail.com',
        // queryParameters:
        query: encodeQueryParameters({
          'subject': subject!.isEmpty ? 'Hello Dev. Matcot' : subject,
          'body': message!.isEmpty
              ? "Type Your Messages here Dev Matcot will be Glad!"
              : 'I am $clientName \n$message'
        })
        //      {
        //   'subject': 'Example Subject & Symbols are allowed!',
        //   'body': "this is body of the mesage"

        // }
        );
    if (clientName.isEmpty && mail.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Message'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'))
                ],
                content: Text(
                    'Please Provide Your Name and E-mail Address\nFor the message to be sent.'
                    ),
              ));
    } else {
      launchUrl(emailLaunchUri);
    }
  }
}
