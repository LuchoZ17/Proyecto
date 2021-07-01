import 'package:flutter/material.dart';
import 'package:my_project/screens/ETS/ets.dart';
import 'package:my_project/screens/Help/help.dart';
import 'package:my_project/screens/Mental%20Construction/mental_construction.dart';
import 'package:my_project/screens/Methods/Contraceptive_Methods.dart';
import 'package:my_project/screens/My%20body/my_body.dart';
import 'package:my_project/screens/Personal%20Relations/personal_relations.dart';
import 'package:my_project/utillities/Home%20Utilities/TextStyle/style_const.dart';
import 'package:my_project/utillities/Home%20Utilities/Widgets/card_widget.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: size.width * 0.5,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/login_bottom.png',
              width: size.width * 0.6,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://image.flaticon.com/icons/png/512/3135/3135768.png',
                            ),
                            radius: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pepito Perez',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.white),
                            ),
                            Text(
                              '77157787',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10, //Espacio horizontal entre los Card
                      crossAxisSpacing: 10, //Espacio vertical entre los card
                      crossAxisCount: 2,
                      primary: false,
                      children: <Widget>[
                        CardWidget(
                          svgPicture: 'assets/svgImages/body.svg',
                          text: 'Mi Cuerpo',
                          pageRoute: MyBodyScreen(),
                        ),
                        CardWidget(
                          svgPicture: 'assets/svgImages/brain.svg',
                          text: 'Construcción Mental',
                          pageRoute: MentalConstructionScreen(),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ETS()),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            elevation: 8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/std.png',
                                  height: 128.0,
                                ),
                                Text(
                                  'ETS',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CardWidget(
                          svgPicture: 'assets/svgImages/methods.svg',
                          text: 'Métodos Anticonceptivos',
                          pageRoute: ContraceptiveMethodsScreen(),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PersonalRelationsScreen(),
                            ),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  'https://image.flaticon.com/icons/png/512/2636/2636883.png',
                                  height: 128.0,
                                  width: 128.0,
                                ),
                                Text(
                                  'Relaciones Personales',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CardWidget(
                          svgPicture: 'assets/svgImages/ayuda.svg',
                          text: '¿Necesitas ayuda?',
                          pageRoute: HelpScreen(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
