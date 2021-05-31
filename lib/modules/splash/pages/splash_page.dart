import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushNamed(context, "/login");
    } catch (error) {
      Navigator.pushNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.gradients.background),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),
            Opacity(
              opacity: 0.3,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/right-block.png",
                    width: 180,
                    height: 98,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Opacity(
              opacity: 0.3,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/right-block.png",
                    width: 100,
                    height: 54,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 128,
              height: 112,
            ),
            SizedBox(
              height: 25,
            ),
            Opacity(
              opacity: 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/left-block.png",
                    width: 114,
                    height: 54,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Opacity(
              opacity: 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/left-block.png",
                    width: 180,
                    height: 100,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
