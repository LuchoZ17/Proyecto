import 'package:flutter/material.dart';
import 'package:my_project/screens/Splash/components/background.dart';
import 'package:my_project/screens/Splash/components/splash_content.dart';
import 'package:my_project/utillities/Splash%20Utilities/Colors/colors_const.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
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
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, int index) => SplashContent(
                    image: splashData[index]['image'],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 7,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index
              ? kPrimaryColor
              : kPrimaryLightColor.withOpacity(1),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: kPrimaryLightColor,
    minimumSize: Size(88, 44),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(3))),
    backgroundColor: kPrimaryLightColor);
