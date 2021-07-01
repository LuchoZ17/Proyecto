import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/screens/Splash/components/background.dart';
import 'package:my_project/utillities/Splash%20Utilities/TextStyle/text_style_const.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        'text': '¡Bienvenido a EDUSEX!',
        'image': 'assets/svgImages/splash1.svg'
      },
      {
        'text': '¡La aplicación número 1 en educación sexual!',
        'image': 'assets/svgImages/splash2.svg'
      },
      {
        'text': 'Seremos tu guía por esta travesía, acompáñanos;)',
        'image': 'assets/svgImages/splash3.svg'
      },
    ];

    return Background(
      assetImage: 'assets/images/main_top.png',
      assetImage1: 'assets/images/main_bottom.png',
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]['image'],
                    text: '¡Bienvenido a EDUSEX!',
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
        Spacer(),
        Text(
          'EDUSEX',
          style: SplashTextStyle,
        ),
        Text(
          text!,
        ),
        Spacer(flex: 2),
        SvgPicture.asset(image!)
      ],
    );
  }
}
