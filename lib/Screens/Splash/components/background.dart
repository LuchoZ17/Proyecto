import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String assetImage;
  final String assetImage1;
  const Background(
      {Key? key,
      required this.child,
      required this.assetImage1,
      required this.assetImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              assetImage,
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              assetImage1,
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
