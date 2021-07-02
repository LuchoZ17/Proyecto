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
  @override
  Widget build(BuildContext context) {
    int _currentPage = 0;
    PageController _pageController = PageController();

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

    _onChanged(int index) {
      setState(() {
        _currentPage = index;
      });
    }

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
                  controller: _pageController,
                  onPageChanged: _onChanged,
                  itemCount: splashData.length,
                  itemBuilder: (context, int index) => SplashContent(
                    image: splashData[index]['image'],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          List<Widget>.generate(splashData.length, (int index) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 10,
                          width: (index == _currentPage) ? 30 : 10,
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? kPrimaryColor
                                : kPrimaryLightColor,
                          ),
                        );
                      }),
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
}
