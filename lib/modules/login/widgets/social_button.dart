import 'package:flutter/material.dart';
import 'package:split_it/theme/app_text_styles.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final String buttonTitle;
  final VoidCallback onTap;

  const SocialButton({
    Key? key,
    required this.imagePath,
    required this.buttonTitle,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(color: Colors.black12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 25,
                height: 25,
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                buttonTitle,
                style: AppTextStylesDefault().defaultSizeText,
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
