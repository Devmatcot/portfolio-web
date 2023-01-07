import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/layout.dart';
import 'package:portfolio_web/screens/contact_page.dart';
import 'package:portfolio_web/screens/mobile/mobile_testimonies.dart';
import 'package:portfolio_web/screens/testimonies_page.dart';
import 'package:portfolio_web/screens/testimonies_pages.dart';
import 'package:portfolio_web/screens/web/project_details.dart';
import 'package:portfolio_web/screens/web/web_home.dart';
import 'package:portfolio_web/widget/constant.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => Responsive(),
        routes: <GoRoute>[
          GoRoute(
            path: 'contact',
            builder: (BuildContext context, GoRouterState state) =>
                const ContactPage(),
          ),
          GoRoute(
            path: 'project_details',
            builder: (BuildContext context, GoRouterState state) =>
                ProjectDetails(details: state.extra as Map),
          ),
          GoRoute(
            path: 'home',
            builder: (BuildContext context, GoRouterState state) =>
                const Responsive(),
          ),
          GoRoute(
            path: 'testimonies',
            builder: (BuildContext context, GoRouterState state) =>
                ResponsiveTestimonies(),
          ),
        ],
      ),
    ],
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      routerDelegate: _router.routerDelegate,
      title: 'Dev Matcot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      // home:  HomePage(),
    );
  }
}
