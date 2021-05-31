import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_text_styles.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    'Divida suas contas com seus amigos',
                    style: AppTextStylesDefault().loginTitle,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                    'assets/images/emoji.png',
                    width: 36,
                    height: 36,
                  ),
                  title: Text('Faça login com uma das contas abaixo',
                      maxLines: 2,
                      style: AppTextStylesDefault().defaultSizeText),
                ),
                SizedBox(
                  height: 32,
                ),
                SocialButton(
                  imagePath: 'assets/images/google_icon.png',
                  buttonTitle: 'Entrar com Google',
                  onTap: () async {
                    GoogleSignIn _googleSignIn = GoogleSignIn(
                      scopes: <String>[
                        'email',
                      ],
                    );
                    try {
                      final response = await _googleSignIn.signIn();
                      print(response);
                    } catch (error) {}
                  },
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
