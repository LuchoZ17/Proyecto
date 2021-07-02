import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/utillities/Splash%20Utilities/TextStyle/text_style_const.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 50),
        Text(
          'EDUSEX',
          style: SplashTextStyle,
        ),
        SizedBox(
          height: 50,
          child: Text(text!),
        ),
        Spacer(flex: 1),
        SvgPicture.asset(image!)
      ],
    );
  }
}
