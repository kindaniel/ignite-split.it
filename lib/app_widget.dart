import 'package:flutter/material.dart';
import 'package:split_it/modules/splash/pages/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Split.it",
      home: SplashPage(),
    );
  }
}
