import 'package:flutter/material.dart';
import 'package:split_it/theme/app_text_styles.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          child: Container(
            height: 250,
            color: AppTheme.colors.appBarTitle,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTile(
                  leading: Image.network(
                    'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png',
                    width: 50,
                    height: 50,
                  ),
                  title: Text(
                    'Usuário 01',
                    style: AppTextStylesDefault().appBarFont,
                  ),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(
            250,
          ),
        );
}
