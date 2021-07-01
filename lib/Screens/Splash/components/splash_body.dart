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
                    image: 'assets/svgImages/splash1.svg',
                    text: '¡Bienvenido a EDUSEX!',
                    image1: 'assets/svgImages/splash2.svg',
                    text1: '¡La app #1 en educación sexual!',
                    image2: 'assets/svgImages/splash3.svg',
                    text2: 'Seremos tu guía por esta travesía, acompáñanos;)',
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
    required this.text1,
    required this.image1,
    required this.text2,
    required this.image2,
  }) : super(key: key);

  final String text;
  final String image;
  final String text1;
  final String image1;
  final String text2;
  final String image2;

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
          text,
        ),
        Spacer(flex: 2),
        SvgPicture.asset(image)
      ],
    );
  }
}
