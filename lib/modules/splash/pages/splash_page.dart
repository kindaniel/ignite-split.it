import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.gradients.background),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Opacity(
                opacity: 0.3,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/right-block.png",
                      width: 198,
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
                      width: 114,
                      height: 54,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 81,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 128,
                height: 112,
              ),
              SizedBox(
                height: 70,
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
                      width: 198,
                      height: 98,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
