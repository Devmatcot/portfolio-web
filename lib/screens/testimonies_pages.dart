import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio_web/screens/mobile/home.dart';
import 'package:portfolio_web/screens/mobile/mobile_testimonies.dart';
import 'package:portfolio_web/screens/testimonies_page.dart';
import 'package:portfolio_web/screens/web/web_home.dart';

class ResponsiveTestimonies extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraist) {
        if (constraist.maxWidth > 550) {
          return TestimoniesPage();
        } else {
          return MobileTestimoniesPage();
        }
      },
    );
  }
}
