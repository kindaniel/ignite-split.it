import 'package:flutter/material.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/login/login_page.dart';
import 'package:split_it/modules/splash/pages/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Split.it",
      home: SplashPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/error": (context) => ErrorPage()
      },
    );
  }
}
