import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
