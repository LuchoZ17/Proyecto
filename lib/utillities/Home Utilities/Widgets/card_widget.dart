import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/utillities/Home%20Utilities/TextStyle/style_const.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.svgPicture,
      required this.text,
      required this.pageRoute})
      : super(key: key);

  final String svgPicture;
  final String text;
  final Widget pageRoute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => pageRoute)),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              svgPicture,
              height: 128,
            ),
            Text(
              text,
              style:
                  cardTextStyle, //Nuestro estilo de texto guardado en utilities
            ),
          ],
        ),
      ),
    );
  }
}
