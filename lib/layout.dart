import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio_web/screens/mobile/home.dart';
import 'package:portfolio_web/screens/web/web_home.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraist) {
        if (constraist.maxWidth > 700) {
          return WebHome();
        } else {
          return MobileHome();
        }
      },
    );
  }
}
